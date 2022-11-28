
PROGRAM _CYCLIC

    IF NOT PgsTagValid(TagManager.ident) THEN 
        RETURN;
    END_IF

	cm0985Meter();
 
    phaseFault(
        Enable  := TRUE,
        Ph1     := cm0985Meter.Ug1,
        Ph2     := cm0985Meter.Ug2,
        Ph3     := cm0985Meter.Ug3
    );   
    
(*******************************************************
****************** Circuit Breaker  ********************
*******************************************************)
    avr.DigInputs.Online := CB52.st.closed;
    gov.DigInputs.Online := CB52.st.closed;
 	
(******************************************************)   
    //Reset
    IF A65.di.reset THEN
        //A65.di.reset        := FALSE;
        avr.DigInputs.Reset := TRUE;
		gov.DigInputs.Reset := TRUE;
		//Reset to Auto Mode
//		gov.DigInputs.Auto  := TRUE;
//		avr.DigInputs.Auto  := TRUE;
    END_IF;
    
    IF NOT A65.di.remote THEN
        //GOV
        gov.DigInputs.Start     := A65.di.gov_enable;
        gov.DigInputs.Stop      := NOT A65.di.gov_enable;
        gov.DigInputs.Unload    := A65.di.gov_unload;
		gov.DigInputs.RefUp		:= A65.di.gov_up;
		gov.DigInputs.RefDown	:= A65.di.gov_down;
        IF A65.di.gov_ctrl_pwr_enable THEN
            gov.CtrlOnline  := PGS_GOV_CA_PWR;
        ELSE
            gov.CtrlOnline  := PGS_GOV_CA_HZ_1;
        END_IF;
        
        //AVR
		A65.di.avr_unload		:= A65.di.gov_unload;
        avr.DigInputs.Start     := A65.di.avr_enable;
        avr.DigInputs.Stop      := NOT A65.di.avr_enable;
        avr.DigInputs.Unload    := A65.di.avr_unload;
		avr.DigInputs.RefUp		:= A65.di.avr_ref_up;
		avr.DigInputs.RefDown	:= A65.di.avr_ref_down;

        IF A65.di.avr_ctrl_qm_enable    THEN
            avr.CtrlOnline  := PGS_AVR_CA_QM;
        ELSIF  A65.di.avr_ctrl_pf_enable THEN
            avr.CtrlOnline  := PGS_AVR_CA_PF;
        ELSE
            avr.CtrlOnline  := PGS_AVR_CA_UM_1;
        END_IF;
    END_IF;
    
    (******************************************************)
     
	//TRIP
	IF A65.di.avr_trip OR NOT Protection.do.trip_86e THEN
        avr.DigInputs.Stop := TRUE;
    END_IF;
    IF A65.di.gov_trip OR NOT Protection.do.trip_86h THEN
        gov.DigInputs.Stop := TRUE;
    END_IF;
            
	//Meters
	
    //Icc ==> fix 4-20mA
    scale_if.x1 := 4.0;
    scale_if.x2 := 20.0;
    if_input	:= IfAvg * 16.0 / 32767.0 + 4.0;
    
    scale_if( 
        x   := if_input,
        y1  := SysPar.Gen.IfMin,
        y2  := SysPar.Gen.IfMax
    );
	meter.In.If := scale_if.y;
	
	//Vcc ==> fix 4-20mA
    scale_uf.x1 := 4.0;
    scale_uf.x2 := 20.0;
	uf_input	:= UfAvg * 16.0 / 32767.0 + 4.0;
    scale_uf( 
        x   := uf_input,
        y1  := SysPar.Gen.UfMin,
        y2  := SysPar.Gen.UfMax 
    );
	meter.In.Uf := scale_uf.y;
	
	filter_uf( x := meter.In.Uf );
    //Ub
    IF cm0985Main.Enable3phase THEN
        meter.In.Ub := (cm0985Meter.Un12 + cm0985Meter.Un23 + cm0985Meter.Un31) / 3;
    ELSE
        meter.In.Ub := cm0985Meter.Un12;
    END_IF;
	//Um
	IF NOT phaseFault.Fault1 AND NOT phaseFault.Fault2 AND NOT phaseFault.Fault3 THEN
        meter.In.Um 	:=  cm0985Meter.Ug;
    ELSIF phaseFault.Fault1 AND NOT phaseFault.Fault2 AND NOT phaseFault.Fault3 THEN
        meter.In.Um 	:=  cm0985Meter.Ug23;
    ELSIF NOT phaseFault.Fault1 AND phaseFault.Fault2 AND NOT phaseFault.Fault3 THEN
        meter.In.Um 	:=  cm0985Meter.Ug31;
    ELSIF NOT phaseFault.Fault1 AND NOT phaseFault.Fault2 AND phaseFault.Fault3 THEN
        meter.In.Um 	:=  cm0985Meter.Ug12;
    ELSE
        meter.In.Um     :=  phaseFault.Phm * SQRT(3);
    END_IF

	meter.In.Im		:= cm0985Meter.Ig;
	IF meter.In.Um < 5 THEN
		meter.In.Fm		:= 0.0;
		meter.In.PF		:= 1.0;
	ELSE
		meter.In.Fm		:= cm0985Meter.Fg;
		meter.In.PF		:= cm0985Meter.PFg;
	END_IF;
	meter.In.Pm		:= cm0985Meter.Pg;
	meter.In.Qm		:= cm0985Meter.Qg;
	meter.In.Sm		:= cm0985Meter.Sg;
	
    rpm1(ppr := REAL_TO_INT(SysPar.Gen.PPR1));
    filter_rpm1.IN := rpm1.Output;
	filter_rpm1();
    
    rpm2(ppr := REAL_TO_INT(SysPar.Gen.PPR2));
    IF SysPar.Gen.PPR2 <> 0 THEN
		filter_rpm2.IN := rpm2.Output;
	ELSE
		filter_rpm2.IN := 0.0;
	END_IF;
    filter_rpm2();
    
	IF filter_rpm1.OUT > filter_rpm2.OUT THEN
	    meter.In.Rot := filter_rpm1.OUT;
    ELSE
	    meter.In.Rot := filter_rpm2.OUT;
    END_IF;

	IF SysPar.Gen.PPR2 <> 0 THEN
		A65.do.rpm_fault := ( ABS(filter_rpm1.OUT - filter_rpm2.OUT) / meter.Base.Rot ) > 0.05;
	ELSE
		A65.do.rpm_fault := FALSE;
	END_IF;    
	meter       ();
    
	//Position
    //pos1 - ==> fix 4-20mA
	pos1_input	    := INT_TO_REAL(A65.ai.pos1) * 16.0 / 32767.0 + 4.0;
	filter_pos1(IN:=pos1_input);
    scale_pos1( 
        x   := filter_pos1.OUT,
		x1  := SysPar.Gen.Pos1_0p,
        x2  := SysPar.Gen.Pos1_100p 
    );
	pos1.PosIn	:= scale_pos1.y;
	
    pos2_input	    := INT_TO_REAL(A65.ai.pos2) * 16.0 / 32767.0 + 4.0;
    scale_pos2( 
        x   := pos2_input,
		x1  := SysPar.Gen.Pos2_0p,
		x2  := SysPar.Gen.Pos2_100p 
	);
	pos2.PosIn	:= scale_pos2.y;
	
    pos3_input	    := INT_TO_REAL(A65.ai.pos3) * 16.0 / 32767.0 + 4.0;
    scale_pos3( 
        x   := pos3_input,
		x1  := SysPar.Gen.Pos3_0p,
		x2  := SysPar.Gen.Pos3_100p 
	);
    pos3.PosIn := scale_pos3.y;
    
	//Syncronizer
    IF A65.di.remote THEN
        cm0985IO.do.SyncSlip    := SysUpdate.EnableSync;
        cm0985IO.do.SyncDeadBus := SysUpdate.EnableDeadBus AND NOT SysUpdate.EnableSync;
    ELSE    
        cm0985IO.do.SyncSlip    := A65.di.sync_enable AND NOT CB52.st.closed;
        cm0985IO.do.SyncDeadBus := A65.di.dead_bus_enable AND NOT CB52.st.closed AND NOT A65.di.sync_enable;
    END_IF;
	A65.do.sync_enabled     := cm0985IO.do.SyncSlip OR cm0985IO.do.SyncDeadBus;
    IF cm0985IO.do.SyncSlip THEN
		IF cm0985Meter.dAngle > 15 AND cm0985Meter.dAngle < 345 THEN
			gov.SetPoints.fastSetHz := (cm0985Meter.Fs1 / meter.Base.Fm) * 1.001;
		ELSE
			gov.SetPoints.fastSetHz := cm0985Meter.Fs1 / meter.Base.Fm;
		END_IF;
		avr.SetPoints.fastSetUm := meter.Out.Ub;
	END_IF;
	
//=======================================================================
//=====	Para maior estabilidade do controle de potência	=================
//=======================================================================
	// Filtro da leitura da potência para estabilizar o sinal
	IF meter.Out.Pm <> 0 THEN
		filter_pwr(IN:=meter.Out.Pm);
	ELSE
		filter_pwr(IN:=0.0001);
	END_IF;
	// Verifica se a diferença em módulo da potência é menor que 2%
	IF  ABS(filter_pwr.OUT - gov.SetPoints.fastSetPwr) < 0.005
		// Verifica se a diferença em módulo do controle é menor que 5%
	AND ABS(1 - gov.SetPoints.fastSetHz) < 0.03	THEN
		// Se a deadband do PID for diferente, aplica deadband
		IF gov.Parameter.CtrlAuto.CaPwr.PID.db <> 0.03 THEN
			gov.Parameter.CtrlAuto.CaPwr.PID.Update		:= TRUE;
			gov.Parameter.CtrlAuto.CaPwr.PIDHz.Update	:= TRUE;
		END_IF;
		gov.Parameter.CtrlAuto.CaPwr.PID.db		:= 0.03;
		gov.Parameter.CtrlAuto.CaPwr.PIDHz.db	:= 0.03;
	ELSE
		// Se a deadband do PID for diferente, desaplica deadband
		IF gov.Parameter.CtrlAuto.CaPwr.PID.db <> 0.00 THEN
			gov.Parameter.CtrlAuto.CaPwr.PID.Update	:= TRUE;
			gov.Parameter.CtrlAuto.CaPwr.PIDHz.Update	:= TRUE;
		END_IF;
		gov.Parameter.CtrlAuto.CaPwr.PID.db		:= 0.00;
		gov.Parameter.CtrlAuto.CaPwr.PIDHz.db	:= 0.01;
	END_IF;

	
	pwr_tp(IN:= CB52.st.closed, PT:=T#2s);
	IF pwr_tp.Q THEN
		gov.SetPoints.fastSetPwr := 0.1;
	END_IF;
	pwr_ton(IN:= CB52.st.closed AND NOT pwr_mem, PT:= T#5s);
	IF pwr_ton.Q THEN
		pwr_mem := TRUE;
		gov.SetPoints.SetPwr := gov.Parameter.CtrlAuto.CaPwr.Ref;
	END_IF;
	IF NOT CB52.st.closed THEN
		pwr_mem := FALSE;
	END_IF;
//=======================================================================
//=======================================================================

	//GOV
	gov     ();
	
	//POS1
    curve1	( In := gov.Out);
    pos1	( In := curve1.Out, Enable := (gov.DigOutputs.Status.Enable	AND NOT A65.di.gov_trip)
									OR  pos1.Mode > PGS_POS_MD_AUTO
									OR	A65.di.enable_pos1 );
    //Gov Out1
    IF A65.di.gov_trip THEN 
		scale_gov_o1.x := (pos1.Parameter.HCC.dbHigh + pos1.Parameter.HCC.dbLow) / 2.0;
    ELSE
        scale_gov_o1.x := pos1.Out;
    END_IF;
	scale_gov_o1(
		x1 := 0.0,
		x2 := 1.0,
		y1 := 0,
		y2 := 32767.0);
    A65.ao.pos1 := REAL_TO_INT(scale_gov_o1.y);

    //POS2
    curve2	( In := gov.Out );
    pos2	( In := curve2.Out, Enable := (gov.DigOutputs.Status.Enable AND NOT A65.di.gov_trip)
									OR  pos2.Mode <> PGS_POS_MD_AUTO 
									OR	A65.di.enable_pos2 );

    //Gov Out2
    IF A65.di.gov_trip THEN 
		scale_gov_o2.x := (pos2.Parameter.HCC.dbHigh + pos2.Parameter.HCC.dbLow) / 2.0;
    ELSE
        scale_gov_o2.x := pos2.Out;
    END_IF;
	scale_gov_o2(
		x1 := 0.0,
		x2 := 1.0,
		y1 := 0,
		y2 := 32767.0);
    A65.ao.pos2 := REAL_TO_INT(scale_gov_o2.y);

    //POS3
    curve3	( In := gov.Out );
    pos3	( In := curve3.Out, Enable := (gov.DigOutputs.Status.Enable AND NOT A65.di.gov_trip)
									OR  pos3.Mode <> PGS_POS_MD_AUTO 
									OR	A65.di.enable_pos3 );
    //Gov Out3
    IF A65.di.gov_trip THEN 
		scale_gov_o3.x := (pos3.Parameter.HCC.dbHigh + pos3.Parameter.HCC.dbLow) / 2.0;
    ELSE
        scale_gov_o3.x := pos3.Out;
    END_IF;
	scale_gov_o3(
		x1 := 0.0,
		x2 := 1.0,
		y1 := 0,
		y2 := 32767.0);
    A65.ao.pos3 := REAL_TO_INT(scale_gov_o3.y);
        
    //Gov Pos feedback
    gov.PosIn   := pos1.PosOut;
	
    //Digital Outputs
    A65.do.gov_on               := gov.DigOutputs.Status.Enable;
    A65.do.rotation_zero        := meter.Out.Rot <= 0.01; //gov.DigOutputs.Status.Stopped;
    A65.do.rotation_nominal     := gov.DigOutputs.Status.RotationOk;
    A65.do.rotation_brake       := gov.DigOutputs.Status.RotationBrake;
    A65.do.gov_unload           := gov.DigOutputs.Status.Unloaded;
    A65.do.gov_over_rotation    := gov.DigOutputs.Trip.OverRotation;
    A65.do.power_zero           := meter.Out.Pm < gov.Parameter.CtrlAuto.CaPwr.RefOpen;
    	
	//AVR
    avr			();
    //Avr Out1
	scale_avr_o1(
		x  := avr.Out,
		x1 := 0.0,
		x2 := 1.0,
		y1 := 0,
		y2 := 32767.0);
    A65.ao.pwr := REAL_TO_INT(scale_avr_o1.y);

    //Digital Outputs
    A65.do.avr_on               := avr.DigOutputs.Status.Enable;
    A65.do.field_flash_on	    := avr.DigOutputs.Status.FieldFlashOn;
	A65.do.voltage_nominal      := avr.DigOutputs.Status.VoltageOK;
    A65.do.avr_force_crowbar    := A65.di.avr_trip OR NOT avr.DigOutputs.Status.Enable;
    A65.do.avr_limiter_on       := avr.DigOutputs.Alarm.LimiterMin OR avr.DigOutputs.Alarm.LimiterMax;
    	
//***************************************************
//****************** Hour Meter  ********************
//***************************************************
	hour_running	( enable := meter.Out.Rot > 0 ); // Maybe put frequency too?
	hour_online		( enable := gov.DigInputs.Online OR avr.DigInputs.Online );

//***************************************************
//**************** Energy Meter  ********************
//***************************************************	
	energy_active	(
		enable	:= TRUE,
		power	:= meter.In.Pm
	);
	energy_reactive	(
		enable	:= TRUE,
		power	:= meter.In.Qm
	);
 
END_PROGRAM
