
PROGRAM _CYCLIC
    
	IF SysUpdate.SaveAll THEN
		SysUpdate.SaveAll		:= FALSE;
		SysUpdate.UpdateAll     := TRUE;
		TagUpdate.write         := TRUE;
	END_IF;
	
	IF PgsTagValid(TagManager.ident) AND SysUpdate.UpdateAll THEN
		SysUpdate.UpdateAll		:= FALSE;
		SysUpdate.UpdateGen		:= TRUE;
		SysUpdate.UpdateSync	:= TRUE;
		SysUpdate.UpdateBus		:= TRUE;
		SysUpdate.UpdateProt	:= TRUE;
		SysUpdate.UpdateIO      := TRUE;
		
		avr.Update				:= TRUE;
		gov.Update				:= TRUE;
		pos1.Update				:= TRUE;
		pos2.Update				:= TRUE;
		pos3.Update				:= TRUE;
	END_IF;
	
	IF SysUpdate.UpdateGen THEN
		SysUpdate.UpdateGen         := FALSE;
		SysUpdate.UpdateProt		:= TRUE;
        
		//Meter Base
		meter.Base.Um               := SysPar.Gen.UmNom;
		meter.Base.Sm               := SysPar.Gen.SmNom;
		meter.Base.Rot              := SysPar.Gen.RpmNom;
		meter.Base.Fm               := SysPar.Gen.FmNom;
		meter.Base.Uf               := SysPar.Gen.UfNom;
		meter.Base.If               := SysPar.Gen.IfNom;
		meter();
        
        //Phase Sequence
        cm0985.ClockWise            := REAL_TO_BOOL(SysPar.Gen.ClockWise);
        cm0985();
        
        //CM0985 - X2 and X3 - Generator
        cm0985Gen.Connection        := REAL_TO_UDINT(SysPar.Gen.Connection);
		cm0985Gen.Vprim             := SysPar.Gen.UmPrim;
		cm0985Gen.Vsec	            := SysPar.Gen.UmSec;
		cm0985Gen.Vnom		        := meter.Base.Um;
		cm0985Gen.Iprim		        := SysPar.Gen.ImPrim;
		cm0985Gen.Isec		        := REAL_TO_USINT(SysPar.Gen.ImSec);
		cm0985Gen.Inom		        := meter.Base.Im;
		cm0985Gen();
	END_IF;
    
	IF SysUpdate.UpdateSync THEN
		SysUpdate.UpdateSync        := FALSE;
        
        //Meter Base
        meter.Base.Ub               := SysPar.Sync.U1Nom;
		//CM0985 - X4 and X6 - Main
		//X4
        cm0985Main.Enable3phase     := REAL_TO_BOOL(SysPar.Sync.Enable3Phase);
        cm0985Main.Connection1      := REAL_TO_UDINT(SysPar.Sync.Connection);
		cm0985Main.V1prim			:= SysPar.Sync.U1Prim;
		cm0985Main.V1sec			:= SysPar.Sync.U1Sec;
		cm0985Main.V1nom			:= SysPar.Sync.U1Nom;
		cm0985Main();
		
		//CM0985 - Sync
		cm0985Sync.dFmax			:= SysPar.Sync.dFmax;
		cm0985Sync.dFmin			:= SysPar.Sync.dFmin;
		cm0985Sync.dUmax			:= SysPar.Sync.dUmax;
        cm0985Sync.UBmin            := SysPar.Sync.UBmin;
		cm0985Sync.dAngleMax		:= SysPar.Sync.dAngleMax;
		cm0985Sync.PhaseShift		:= SysPar.Sync.PhaseShift;
		cm0985Sync();
        
	END_IF;
    
	IF SysUpdate.UpdateBus THEN
		SysUpdate.UpdateBus         := FALSE;
		//CM0985 - X5 - Bus
		cm0985Bus.Vprim				:= SysPar.Exc.UexcPrim;
		cm0985Bus.Vsec				:= SysPar.Exc.UexcSec;
		cm0985Bus.Vnom				:= SysPar.Exc.UexcSec;
		cm0985Bus();	
	END_IF;
	
	IF SysUpdate.ResetRunningHourMeter THEN
		SysUpdate.ResetRunningHourMeter	:= FALSE;
		hour_running.reset				:= TRUE;
	END_IF;

	IF SysUpdate.ResetOnlineHourMeter THEN
		SysUpdate.ResetOnlineHourMeter	:= FALSE;
		hour_online.reset				:= TRUE;
	END_IF;
	
//	IF SysUpdate.ResetEnergy THEN
//		SysUpdate.ResetEnergy			:= FALSE;
//		energia_ativa.reset				:= TRUE;
//		energia_reativa.reset			:= TRUE;
//	END_IF;

	IF SysUpdate.ResetEnergy THEN
		SysUpdate.ResetEnergy			:= FALSE;
		energy_active.reset				:= TRUE;
		energy_reactive.reset			:= TRUE;
	END_IF;
	
    IF SysUpdate.UpdateIO THEN
		SysUpdate.UpdateIO          := FALSE;
        
        //AI4622
        ai4622.Channel1             := REAL_TO_UDINT(SysIOPar.AI1Type);       
        ai4622.Channel2             := REAL_TO_UDINT(SysIOPar.AI2Type);       
        ai4622.Channel3             := REAL_TO_UDINT(SysIOPar.AI3Type);       
        ai4622.Channel4             := REAL_TO_UDINT(SysIOPar.AI4Type);       
        ai4622();
        
        //AO4622
        ao4622.Channel1             := REAL_TO_UDINT(SysIOPar.AO1Type);
        ao4622.Channel2             := REAL_TO_UDINT(SysIOPar.AO2Type);
        ao4622.Channel3             := REAL_TO_UDINT(SysIOPar.AO3Type);
        ao4622.Channel4             := REAL_TO_UDINT(SysIOPar.AO4Type);
	    ao4622();
	END_IF;
    
(****************** Hour Meter  ***********************)	
	hour_running	( enable := meter.Out.Rot > 0.0 );
	hour_online		( enable := CB52.st.closed );

(***************** Energy Meter  **********************)	
//	energia_ativa	( enable	:= CB52.st.closed,
//					  power		:= meter.In.Pm	);
//	energia_reativa	( enable	:= CB52.st.closed,
//					  power		:= meter.In.Qm	);

	// Update Meters
	MdbMeter[0]	 	:= meter.In.Fm;
	MdbMeter[1]	 	:= cm0985Meter.Ug1;
	MdbMeter[2]	 	:= cm0985Meter.Ug2;
	MdbMeter[3]	 	:= cm0985Meter.Ug3;
	MdbMeter[4]	 	:= cm0985Meter.Ug12;
	MdbMeter[5]	 	:= cm0985Meter.Ug23;
	MdbMeter[6]	 	:= cm0985Meter.Ug31;
	MdbMeter[7]	 	:= cm0985Meter.Ug;
	IF cm0985Meter.Ig > 5 THEN
		MdbMeter[8]	 	:= cm0985Meter.Ig1;
		MdbMeter[9]		:= cm0985Meter.Ig2;
		MdbMeter[10] 	:= cm0985Meter.Ig3;
		MdbMeter[11] 	:= cm0985Meter.Ig;
	ELSE
		MdbMeter[8]	 	:= 0;
		MdbMeter[9]		:= 0;
		MdbMeter[10] 	:= 0;
		MdbMeter[11] 	:= 0; 
	END_IF;

	MdbMeter[12] 	:= cm0985Meter.Ign;
	MdbMeter[13] 	:= cm0985Meter.Igm_dyn;
	MdbMeter[14] 	:= cm0985Meter.Pg;
	MdbMeter[15] 	:= cm0985Meter.Qg;
	MdbMeter[16] 	:= cm0985Meter.Sg;
	MdbMeter[17] 	:= meter.In.PF;
    //Exc    
	MdbMeter[18]    := uf_input;
	MdbMeter[19] 	:= filter_uf.y; //meter.In.Uf;
	MdbMeter[20]    := if_input;
	MdbMeter[21] 	:= meter.In.If;
	MdbMeter[22] 	:= cm0985Meter.Fb;
	MdbMeter[23] 	:= cm0985Meter.Ub12;
	MdbMeter[24] 	:= cm0985Meter.Ub23;
	MdbMeter[25] 	:= cm0985Meter.Ub31;
    //Bus
	MdbMeter[26] 	:= cm0985Meter.Un1;
	MdbMeter[27] 	:= cm0985Meter.Un2;
	MdbMeter[28] 	:= cm0985Meter.Un3;
	MdbMeter[29] 	:= cm0985Meter.Un12;
	MdbMeter[30] 	:= cm0985Meter.Un23;
	MdbMeter[31] 	:= cm0985Meter.Un31;
	MdbMeter[32] 	:= cm0985Meter.Fs1;
	IF cm0985Meter.dAngle > 180 THEN
		MdbMeter[33]:= cm0985Meter.dAngle - 360;
	ELSE
		MdbMeter[33]:= cm0985Meter.dAngle;
	END_IF
    //Turbine
	MdbMeter[34] 	:= meter.In.Rot;
	MdbMeter[35] 	:= pos1_input;
	MdbMeter[36] 	:= pos1.PosIn;
	MdbMeter[37] 	:= pos2_input;
	MdbMeter[38] 	:= pos2.PosIn;
	MdbMeter[39] 	:= pos3_input;
	MdbMeter[40] 	:= pos3.PosIn;
    //
	MdbMeter[41] 	:= ExcTemp;												//Excitation Temperature
	MdbMeter[42]	:= hour_running.horas;	
	MdbMeter[43]	:= hour_running.minutos;
	MdbMeter[44]	:= hour_online.horas;
	MdbMeter[45]	:= hour_online.minutos;
	MdbMeter[46]	:= LREAL_TO_REAL(energy_active.posEnergy); //LREAL_TO_REAL(energia_ativa.posEnergy);
	MdbMeter[47]	:= LREAL_TO_REAL(energy_active.negEnergy); //LREAL_TO_REAL(energia_ativa.negEnergy);
	MdbMeter[48]	:= LREAL_TO_REAL(energy_reactive.posEnergy); //LREAL_TO_REAL(energia_reativa.posEnergy);
	MdbMeter[49]	:= LREAL_TO_REAL(energy_reactive.negEnergy); //LREAL_TO_REAL(energia_reativa.negEnergy);


END_PROGRAM
