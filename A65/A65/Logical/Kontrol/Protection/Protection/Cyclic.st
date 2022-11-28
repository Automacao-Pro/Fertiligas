
PROGRAM _CYCLIC

    IF NOT PgsTagValid(TagManager.ident) THEN 
        RETURN;
    END_IF
	Protection.di.reset := A65.di.reset;
	
	//Generator Phase Fault
    ProtFlag.GenPhAFault    := phaseFault.Fault1;
    ProtFlag.GenPhBFault    := phaseFault.Fault2;
    ProtFlag.GenPhCFault    := phaseFault.Fault3;
    
    //Phase Sequency Fault
	ton_ugseq(IN:=cm0985IO.di.UgPhSeqFault 	AND meter.Out.Um > 0.5, PT:=T#5s);
	ton_igseq(IN:=cm0985IO.di.IgPhSeqFault 	AND meter.Out.Im > 0.1, PT:=T#5s);
	ton_ubseq(IN:=cm0985IO.di.Us1PhSeqFault	AND meter.Out.Ub > 0.5, PT:=T#5s);
	ProtFlag.UgPhSeqFault		:= ton_ugseq.Q;
	ProtFlag.IgPhSeqFault		:= ton_igseq.Q;
	ProtFlag.Us1PhSeqFault		:= ton_ubseq.Q;
    
    //Power Excitation Phase Fault
    ExcPhaseFault(
        Enable  :=  meter.Out.Um > 0.5,
        Ph1     := cm0985Meter.Ub1,
        Ph2     := cm0985Meter.Ub2,
        Ph3     := cm0985Meter.Ub3
    );
    ProtFlag.ExcPhAFault    := ExcPhaseFault.Fault1;
    ProtFlag.ExcPhBFault    := ExcPhaseFault.Fault2;
    ProtFlag.ExcPhCFault    := ExcPhaseFault.Fault3;
	 
	// Analog Temperature
    ExcTemp := INT_TO_REAL(Protection.ai.ExcTemp)/ 10.0;
    
    // Sensor Rotation Fault
    ProtFlag.RpmFault   := A65.do.rpm_fault;
	
	//Excitation
	timer_crowbar(IN:=avr.DigOutputs.Status.Enable AND NOT Protection.di.crowbar_ok, PT:=T#1s);
	LExc_Crowbar( Reset := Protection.di.reset, In := timer_crowbar.Q );
	ProtFlag.ExcCrowBar			:= LExc_Crowbar.Out;
	LExc_OverTemp( Reset := Protection.di.reset, In :=  NOT Protection.di.pwr_temp_ok OR ExcTemp	> 90.0 );
	ProtFlag.ExcOverTemp		:= LExc_OverTemp.Out;
	
	//Voltage Sequence Elements
	V0(
        PhaseA := cm0985Meter.Ug1, AngleA := cm0985Meter.Ug1Angle,
        PhaseB := cm0985Meter.Ug2, AngleB := cm0985Meter.Ug2Angle,
        PhaseC := cm0985Meter.Ug3, AngleC := cm0985Meter.Ug3Angle        
    );	
	V1(
        ClockWise := cm0985.ClockWise,
        PhaseA := cm0985Meter.Ug1, AngleA := cm0985Meter.Ug1Angle,
        PhaseB := cm0985Meter.Ug2, AngleB := cm0985Meter.Ug2Angle,
        PhaseC := cm0985Meter.Ug3, AngleC := cm0985Meter.Ug3Angle        
    );
	V2(
        ClockWise := cm0985.ClockWise,
        PhaseA := cm0985Meter.Ug1, AngleA := cm0985Meter.Ug1Angle,
        PhaseB := cm0985Meter.Ug2, AngleB := cm0985Meter.Ug2Angle,
        PhaseC := cm0985Meter.Ug3, AngleC := cm0985Meter.Ug3Angle        
    );
	//Current Sequence Elements
    I0(
        PhaseA := cm0985Meter.Ig1, AngleA := cm0985Meter.Ig1Angle,
        PhaseB := cm0985Meter.Ig2, AngleB := cm0985Meter.Ig2Angle,
        PhaseC := cm0985Meter.Ig3, AngleC := cm0985Meter.Ig3Angle        
    );
	I1(
        ClockWise := cm0985.ClockWise,
        PhaseA := cm0985Meter.Ig1, AngleA := cm0985Meter.Ig1Angle,
        PhaseB := cm0985Meter.Ig2, AngleB := cm0985Meter.Ig2Angle,
        PhaseC := cm0985Meter.Ig3, AngleC := cm0985Meter.Ig3Angle        
    );
	I2(
        ClockWise := cm0985.ClockWise,
        PhaseA := cm0985Meter.Ig1, AngleA := cm0985Meter.Ig1Angle,
        PhaseB := cm0985Meter.Ig2, AngleB := cm0985Meter.Ig2Angle,
        PhaseC := cm0985Meter.Ig3, AngleC := cm0985Meter.Ig3Angle        
    );
	
	
	// Phase Overvoltage Level 1
	P59A_L1( Enable := P59A_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ug1 );
	P59B_L1( Enable := P59B_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ug2 );
	P59C_L1( Enable := P59C_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ug3 );
	L59A_L1( Reset := Protection.di.reset, In := P59A_L1.O62T );
	L59B_L1( Reset := Protection.di.reset, In := P59B_L1.O62T );
	L59C_L1( Reset := Protection.di.reset, In := P59C_L1.O62T );
	// Phase Overvoltage Level 2
	P59A_L2( Enable := P59A_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ug1 );
	P59B_L2( Enable := P59B_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ug2 );
	P59C_L2( Enable := P59C_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ug3 );
	L59A_L2( Reset := Protection.di.reset, In := P59A_L2.O62T );
	L59B_L2( Reset := Protection.di.reset, In := P59B_L2.O62T );
	L59C_L2( Reset := Protection.di.reset, In := P59C_L2.O62T );
	// Phase-Phase Overvoltage Level 1
	P59AB_L1( Enable := P59AB_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ug12 );
	P59BC_L1( Enable := P59BC_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ug23 );
	P59CA_L1( Enable := P59CA_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ug31 );
	L59AB_L1( Reset := Protection.di.reset, In := P59AB_L1.O62T );
	L59BC_L1( Reset := Protection.di.reset, In := P59BC_L1.O62T );
	L59CA_L1( Reset := Protection.di.reset, In := P59CA_L1.O62T );
	// Phase-Phase Overvoltage Level 2
	P59AB_L2( Enable := P59AB_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ug12 );
	P59BC_L2( Enable := P59BC_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ug23 );
	P59CA_L2( Enable := P59CA_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ug31 );
	L59AB_L2( Reset := Protection.di.reset, In := P59AB_L2.O62T );
	L59BC_L2( Reset := Protection.di.reset, In := P59BC_L2.O62T );
	L59CA_L2( Reset := Protection.di.reset, In := P59CA_L2.O62T );
	// Positive Sequence Overvoltage Level 1
	P59V1_L1( Enable := P59V1_L1.Parameter.Level <> 0.0, In := V1.Phase1 );
	L59V1_L1( Reset := Protection.di.reset, In := P59V1_L1.O62T );
	// Positive Sequence Overvoltage Level 2
	P59V1_L2( Enable := P59V1_L2.Parameter.Level <> 0.0, In := V1.Phase1 );
	L59V1_L2( Reset := Protection.di.reset, In := P59V1_L2.O62T );
	// Negative Sequence Overvoltage Level 1
	P59Q_L1( Enable := P59Q_L1.Parameter.Level <> 0.0, In := V2.Phase2 );
	L59Q_L1( Reset := Protection.di.reset, In := P59Q_L1.O62T );
	// Negative Sequence Overvoltage Level 2
	P59Q_L2( Enable := P59Q_L2.Parameter.Level <> 0.0, In := V2.Phase2 );
	L59Q_L2( Reset := Protection.di.reset, In := P59Q_L2.O62T );
	// Zero Sequence Overvoltage Level 1
	P59G_L1( Enable := P59G_L1.Parameter.Level <> 0.0, In := V0.Phase0 );
	L59G_L1( Reset := Protection.di.reset, In := P59G_L1.O62T );
	// Zero Sequence Overvoltage Level 2
	P59G_L2( Enable := P59G_L2.Parameter.Level <> 0.0, In := V0.Phase0 );
	L59G_L2( Reset := Protection.di.reset, In := P59G_L2.O62T );
	
	// Phase Undervoltage Level 1
	P27A_L1( Enable := P27A_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug1 );
	P27B_L1( Enable := P27B_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug2 );
	P27C_L1( Enable := P27C_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug3 );
	L27A_L1( Reset := Protection.di.reset, In := P27A_L1.O62T );
	L27B_L1( Reset := Protection.di.reset, In := P27B_L1.O62T );
	L27C_L1( Reset := Protection.di.reset, In := P27C_L1.O62T );
	// Phase Undervoltage Level 2
	P27A_L2( Enable := P27A_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug1 );
	P27B_L2( Enable := P27B_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug2 );
	P27C_L2( Enable := P27C_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug3 );
	L27A_L2( Reset := Protection.di.reset, In := P27A_L2.O62T );
	L27B_L2( Reset := Protection.di.reset, In := P27B_L2.O62T );
	L27C_L2( Reset := Protection.di.reset, In := P27C_L2.O62T );
	// Phase-Phase Undervoltage Level 1
	P27AB_L1( Enable := P27AB_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug12 );
	P27BC_L1( Enable := P27BC_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug23 );
	P27CA_L1( Enable := P27CA_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug31 );
	L27AB_L1( Reset := Protection.di.reset, In := P27AB_L1.O62T );
	L27BC_L1( Reset := Protection.di.reset, In := P27BC_L1.O62T );
	L27CA_L1( Reset := Protection.di.reset, In := P27CA_L1.O62T );
	// Phase-Phase Undervoltage Level 2
	P27AB_L2( Enable := P27AB_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug12 );
	P27BC_L2( Enable := P27BC_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug23 );
	P27CA_L2( Enable := P27CA_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := cm0985Meter.Ug31 );
	L27AB_L2( Reset := Protection.di.reset, In := P27AB_L2.O62T );
	L27BC_L2( Reset := Protection.di.reset, In := P27BC_L2.O62T );
	L27CA_L2( Reset := Protection.di.reset, In := P27CA_L2.O62T );
	// Positive Sequence Undervoltage Level 1
	P27V1_L1( Enable := P27V1_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := V1.Phase1 );
	L27V1_L1( Reset := Protection.di.reset, In := P27V1_L1.O62T );
	// Positive Sequence Undervoltage Level 2
	P27V1_L2( Enable := P27V1_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := V1.Phase1 );
	L27V1_L2( Reset := Protection.di.reset, In := P27V1_L2.O62T );
	
	// Overfrequency Level 1
	P81O_L1( Enable := P81O_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := meter.In.Fm );
	L81O_L1( Reset := Protection.di.reset, In := P81O_L1.O62T );
	// Overfrequency Level 2
	P81O_L2( Enable := P81O_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := meter.In.Fm );
	L81O_L2( Reset := Protection.di.reset, In := P81O_L2.O62T );
	
	// Underfrequency Level 1
	P81U_L1( Enable := P81U_L1.Parameter.Level <> 0.0 AND CB52.st.closed, In := meter.In.Fm );
	L81U_L1( Reset := Protection.di.reset, In := P81U_L1.O62T );
	// Underfrequency Level 2
	P81U_L2( Enable := P81U_L2.Parameter.Level <> 0.0 AND CB52.st.closed, In := meter.In.Fm );
	L81U_L2( Reset := Protection.di.reset, In := P81U_L2.O62T );
	
	// Over Active Power Level 1
	P32OP_L1( Enable := P32OP_L1.Parameter.Level <> 0.0, In := meter.Out.Pm );
	L32OP_L1( Reset := Protection.di.reset, In := P32OP_L1.O62T );
	// Under Active Power Level 1
	P32UP_L1( Enable := P32UP_L1.Parameter.Level <> 0.0, In := meter.Out.Pm );
	L32UP_L1( Reset := Protection.di.reset, In := P32UP_L1.O62T );
	
	// Over Reactive Power Level 1
	P32OQ_L1( Enable := P32OQ_L1.Parameter.Level <> 0.0, In := meter.Out.Qm );
	L32OQ_L1( Reset := Protection.di.reset, In := P32OQ_L1.O62T );
	// Under Reactive Power Level 1
	P32UQ_L1( Enable := P32UQ_L1.Parameter.Level <> 0.0, In := meter.Out.Qm );
	L32UQ_L1( Reset := Protection.di.reset, In := P32UQ_L1.O62T );
	
	// Phase Instantaneous Overcurrent Level 1
	P50PA_L1( Enable := P50PA_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ig1 );
	P50PB_L1( Enable := P50PB_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ig2 );
	P50PC_L1( Enable := P50PC_L1.Parameter.Level <> 0.0, In := cm0985Meter.Ig3 );
	L50PA_L1( Reset := Protection.di.reset, In := P50PA_L1.O62T );
	L50PB_L1( Reset := Protection.di.reset, In := P50PB_L1.O62T );
	L50PC_L1( Reset := Protection.di.reset, In := P50PC_L1.O62T );
	// Negative Sequence Instantaneous Overcurrent Level 1
	P50Q_L1 ( Enable := P50Q_L1.Parameter.Level <> 0.0, In := I2.Phase2 );
	L50Q_L1( Reset := Protection.di.reset, In := P50Q_L1.O62T );
	// Residual Instantaneous Overcurrent Level 1
	P50G_L1 ( Enable := P50G_L1.Parameter.Level <> 0.0, In := I0.Phase0 );
	L50G_L1( Reset := Protection.di.reset, In := P50G_L1.O62T );
	// Phase Instantaneous Overcurrent Level 2
	P50PA_L2( Enable := P50PA_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ig1 );
	P50PB_L2( Enable := P50PB_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ig2 );
	P50PC_L2( Enable := P50PC_L2.Parameter.Level <> 0.0, In := cm0985Meter.Ig3 );
	L50PA_L2( Reset := Protection.di.reset, In := P50PA_L2.O62T );
	L50PB_L2( Reset := Protection.di.reset, In := P50PB_L2.O62T );
	L50PC_L2( Reset := Protection.di.reset, In := P50PC_L2.O62T );
	// Negative Sequence Instantaneous Overcurrent Level 2
	P50Q_L2 ( Enable := P50Q_L2.Parameter.Level <> 0.0, In := I2.Phase2 );
	L50Q_L2( Reset := Protection.di.reset, In := P50Q_L2.O62T );
	// Residual Instantaneous Overcurrent Level 2
	P50G_L2 ( Enable := P50G_L2.Parameter.Level <> 0.0, In := I0.Phase0 );
	L50G_L2( Reset := Protection.di.reset, In := P50G_L2.O62T );
	
	// Voltage Restraint Time Overcurrent - 51V
	P51VA_L1( Enable := TRUE, I := cm0985Meter.Ig1, V := cm0985Meter.Ug1 );
	P51VB_L1( Enable := TRUE, I := cm0985Meter.Ig2, V := cm0985Meter.Ug2 );
	P51VC_L1( Enable := TRUE, I := cm0985Meter.Ig3, V := cm0985Meter.Ug3 );
	L51VA_L1( Reset := Protection.di.reset, In := P51VA_L1.O51VT );
	L51VB_L1( Reset := Protection.di.reset, In := P51VB_L1.O51VT );
	L51VC_L1( Reset := Protection.di.reset, In := P51VC_L1.O51VT );
	// Phase Time Overcurrent - 51P
	P51PA_L1( Enable := TRUE, I := cm0985Meter.Ig1 );
	P51PB_L1( Enable := TRUE, I := cm0985Meter.Ig2 );
	P51PC_L1( Enable := TRUE, I := cm0985Meter.Ig3 );
	L51PA_L1( Reset := Protection.di.reset, In := P51PA_L1.O51VT );
	L51PB_L1( Reset := Protection.di.reset, In := P51PB_L1.O51VT );
	L51PC_L1( Reset := Protection.di.reset, In := P51PC_L1.O51VT );
	// Negative Sequence Time Overcurrent - 51Q
	P51Q_L1( Enable := TRUE, I := I2.Phase2 );
	L51Q_L1( Reset := Protection.di.reset, In := P51Q_L1.O51VT );
	// Residual Time Overcurrent - 51Q
	P51G_L1( Enable := TRUE, I := I0.Phase0 );
	L51G_L1( Reset := Protection.di.reset, In := P51G_L1.O51VT );
	
	// V/Hz Element - 24
	P24_L1( Enable := P24_L1.Parameter.VHZ <> 0.0, V := meter.In.Um, Hz:= meter.In.Fm );
    L24_L1( Reset := Protection.di.reset, In := P24_L1.O24T );
   
	
   	IF I1.Phase1 > 0.0 THEN
		// Loss of Field Level 1 - 40
		P40_L1( Enable := P40_L1.Parameter.diameter <> 0.0, Zmodule := V1.Phase1/I1.Phase1, Zangle := V1.Angle1 - I1.Angle1 );
		// Loss of Field Level 2 - 40
		P40_L2( Enable := P40_L2.Parameter.diameter <> 0.0, Zmodule := V1.Phase1/I1.Phase1, Zangle := V1.Angle1 - I1.Angle1 );
	ELSE
		P40_L1( Enable := FALSE );
		P40_L2( Enable := FALSE );
	END_IF;
	L40_L1( Reset := Protection.di.reset, In := P40_L1.O40ZT );
	L40_L2( Reset := Protection.di.reset, In := P40_L2.O40ZT );
	
    //86H
	L86H(
		Reset	:= Protection.di.reset,
		In		:=
			ProtFlag.WatchDog					OR
			gov.DigOutputs.Trip.OverRotation	OR
			pos1.Trip							OR
			pos2.Trip							OR
			pos3.Trip
	);
   
	//86E
	L86E(
		Reset	:= Protection.di.reset,
		In		:=
			//59P
			P59A_L1.O62T OR P59B_L1.O62T OR P59C_L1.O62T OR
			P59A_L2.O62T OR P59B_L2.O62T OR P59C_L2.O62T OR
			//59PP
			P59AB_L1.O62T OR P59BC_L1.O62T OR P59CA_L1.O62T OR
			P59AB_L2.O62T OR P59BC_L2.O62T OR P59CA_L2.O62T OR
			//59Q
			P59Q_L1.O62T OR P59Q_L2.O62T OR
			//59G
			P59G_L1.O62T OR P59G_L2.O62T OR
			//59V1
			P59V1_L1.O62T OR P59V1_L2.O62T OR
			//27P
			P27A_L1.O62T OR P27B_L1.O62T OR P27C_L1.O62T OR
			P27A_L2.O62T OR P27B_L2.O62T OR P27C_L2.O62T OR
			//27PP
			P27AB_L1.O62T OR P27BC_L1.O62T OR P27CA_L1.O62T OR
			P27AB_L2.O62T OR P27BC_L2.O62T OR P27CA_L2.O62T OR
			//27V1
			P27V1_L1.O62T OR P27V1_L2.O62T OR
			//81O
			P81O_L1.O62T OR P81O_L2.O62T OR
			//81U
			P81U_L1.O62T OR P81U_L2.O62T OR
			//32
			P32OP_L1.O62T OR P32UP_L1.O62T OR P32OQ_L1.O62T OR P32UQ_L1.O62T OR
			//50P
			P50PA_L1.O62T OR P50PB_L1.O62T OR P50PC_L1.O62T OR
			P50PA_L2.O62T OR P50PB_L2.O62T OR P50PC_L2.O62T OR
			//50Q
			P50Q_L1.O62T OR P50Q_L2.O62T OR
			//50G
			P50G_L1.O62T OR P50G_L2.O62T OR
			//51V
			P51VA_L1.O51VT OR P51VB_L1.O51VT OR P51VC_L1.O51VT OR
			//51P
			P51PA_L1.O51VT OR P51PB_L1.O51VT OR P51PC_L1.O51VT OR
			//51Q
			P51Q_L1.O51VT OR
			//51G
			P51G_L1.O51VT OR
			//24
			P24_L1.O24T OR
			//40
			P40_L1.O40ZT OR P40_L2.O40ZT OR
			//External Inputs 
			ProtFlag.WatchDog					OR
			ProtFlag.ExcCrowBar					OR
			ProtFlag.ExcOverTemp				OR
			//AVR
			avr.DigOutputs.Trip.Trip			OR
			//GOV
			gov.DigOutputs.Trip.CtrlDisabled	OR
			gov.DigOutputs.Trip.MeterIdent		OR
			gov.DigOutputs.Trip.Start1Fault		OR
			gov.DigOutputs.Trip.Start2Fault		OR
			//86H
			L86H.Out
	);

	ProtFlag.T86H	:= L86H.Out;
	ProtFlag.T86E	:= L86E.Out;
	
       
    //TRIP                        
    Protection.do.trip_86e  := NOT L86E.Out;
	Protection.do.trip_86h  := NOT L86H.Out;
   	
	P50BF.Parameter.Inom	:= meter.Base.Im;
	P50BF.Parameter.Time	:= ProtPar.T50BF;
	P50BF.I1				:= I1.Phase1;
	P50BF.I2				:= I2.Phase2;
    P50BF.Closed			:= CB52.st.closed;
    P50BF( Enable := TRUE, Trip := ProtFlag.T86E OR ProtFlag.T86H );
	
	Protection.do.trip_50bf := P50BF.O50BFT;
	
	/////////////
	/// FLAGS ///
	/////////////
	//59P
	ProtFlag.P59A_L1	:= P59A_L1.O62;
	ProtFlag.T59A_L1	:= P59A_L1.O62T;
	ProtFlag.L59A_L1	:= L59A_L1.Out;
	ProtFlag.P59B_L1	:= P59B_L1.O62;
	ProtFlag.T59B_L1	:= P59B_L1.O62T;
	ProtFlag.L59B_L1	:= L59B_L1.Out;
	ProtFlag.P59C_L1	:= P59C_L1.O62;
	ProtFlag.T59C_L1	:= P59C_L1.O62T;
	ProtFlag.L59C_L1	:= L59C_L1.Out;
	ProtFlag.P59A_L2	:= P59A_L2.O62;
	ProtFlag.T59A_L2	:= P59A_L2.O62T;
	ProtFlag.L59A_L2	:= L59A_L2.Out;
	ProtFlag.P59B_L2	:= P59B_L2.O62;
	ProtFlag.T59B_L2	:= P59B_L2.O62T;
	ProtFlag.L59B_L2	:= L59B_L2.Out;
	ProtFlag.P59C_L2	:= P59C_L2.O62;
	ProtFlag.T59C_L2	:= P59C_L2.O62T;
	ProtFlag.L59C_L2	:= L59C_L2.Out;
	//59PP
	ProtFlag.P59AB_L1	:= P59AB_L1.O62;
	ProtFlag.T59AB_L1	:= P59AB_L1.O62T;
	ProtFlag.L59AB_L1	:= L59AB_L1.Out;
	ProtFlag.P59BC_L1	:= P59BC_L1.O62;
	ProtFlag.T59BC_L1	:= P59BC_L1.O62T;
	ProtFlag.L59BC_L1	:= L59BC_L1.Out;
	ProtFlag.P59CA_L1	:= P59CA_L1.O62;
	ProtFlag.T59CA_L1	:= P59CA_L1.O62T;
	ProtFlag.L59CA_L1	:= L59CA_L1.Out;
	ProtFlag.P59AB_L2	:= P59AB_L2.O62;
	ProtFlag.T59AB_L2	:= P59AB_L2.O62T;
	ProtFlag.L59AB_L2	:= L59AB_L2.Out;
	ProtFlag.P59BC_L2	:= P59BC_L2.O62;
	ProtFlag.T59BC_L2	:= P59BC_L2.O62T;
	ProtFlag.L59BC_L2	:= L59BC_L2.Out;
	ProtFlag.P59CA_L2	:= P59CA_L2.O62;
	ProtFlag.T59CA_L2	:= P59CA_L2.O62T;
	ProtFlag.L59CA_L2	:= L59CA_L2.Out;
	//59Q
	ProtFlag.P59Q_L1	:= P59Q_L1.O62;
	ProtFlag.T59Q_L1	:= P59Q_L1.O62T;
	ProtFlag.L59Q_L1	:= L59Q_L1.Out;	
	ProtFlag.P59Q_L2	:= P59Q_L2.O62;
	ProtFlag.T59Q_L2	:= P59Q_L2.O62T;
	ProtFlag.L59Q_L2	:= L59Q_L2.Out;	
	//59G
	ProtFlag.P59G_L1	:= P59G_L1.O62;
	ProtFlag.T59G_L1	:= P59G_L1.O62T;
	ProtFlag.L59G_L1	:= L59G_L1.Out;	
	ProtFlag.P59G_L2	:= P59G_L2.O62;
	ProtFlag.T59G_L2	:= P59G_L2.O62T;
	ProtFlag.L59G_L2	:= L59G_L2.Out;	
	//59V1
	ProtFlag.P59V1_L1	:= P59V1_L1.O62;
	ProtFlag.T59V1_L1	:= P59V1_L1.O62T;
	ProtFlag.L59V1_L1	:= L59V1_L1.Out;	
	ProtFlag.P59V1_L2	:= P59V1_L2.O62;
	ProtFlag.T59V1_L2	:= P59V1_L2.O62T;
	ProtFlag.L59V1_L2	:= L59V1_L2.Out;		
	//27P
	ProtFlag.P27A_L1	:= P27A_L1.O62;
	ProtFlag.T27A_L1	:= P27A_L1.O62T;
	ProtFlag.L27A_L1	:= L27A_L1.Out;
	ProtFlag.P27B_L1	:= P27B_L1.O62;
	ProtFlag.T27B_L1	:= P27B_L1.O62T;
	ProtFlag.L27B_L1	:= L27B_L1.Out;
	ProtFlag.P27C_L1	:= P27C_L1.O62;
	ProtFlag.T27C_L1	:= P27C_L1.O62T;
	ProtFlag.L27C_L1	:= L27C_L1.Out;
	ProtFlag.P27A_L2	:= P27A_L2.O62;
	ProtFlag.T27A_L2	:= P27A_L2.O62T;
	ProtFlag.L27A_L2	:= L27A_L2.Out;
	ProtFlag.P27B_L2	:= P27B_L2.O62;
	ProtFlag.T27B_L2	:= P27B_L2.O62T;
	ProtFlag.L27B_L2	:= L27B_L2.Out;
	ProtFlag.P27C_L2	:= P27C_L2.O62;
	ProtFlag.T27C_L2	:= P27C_L2.O62T;
	ProtFlag.L27C_L2	:= L27C_L2.Out;
	//27PP
	ProtFlag.P27AB_L1	:= P27AB_L1.O62;
	ProtFlag.T27AB_L1	:= P27AB_L1.O62T;
	ProtFlag.L27AB_L1	:= L27AB_L1.Out;
	ProtFlag.P27BC_L1	:= P27BC_L1.O62;
	ProtFlag.T27BC_L1	:= P27BC_L1.O62T;
	ProtFlag.L27BC_L1	:= L27BC_L1.Out;
	ProtFlag.P27CA_L1	:= P27CA_L1.O62;
	ProtFlag.T27CA_L1	:= P27CA_L1.O62T;
	ProtFlag.L27CA_L1	:= L27CA_L1.Out;
	ProtFlag.P27AB_L2	:= P27AB_L2.O62;
	ProtFlag.T27AB_L2	:= P27AB_L2.O62T;
	ProtFlag.L27AB_L2	:= L27AB_L2.Out;
	ProtFlag.P27BC_L2	:= P27BC_L2.O62;
	ProtFlag.T27BC_L2	:= P27BC_L2.O62T;
	ProtFlag.L27BC_L2	:= L27BC_L2.Out;
	ProtFlag.P27CA_L2	:= P27CA_L2.O62;
	ProtFlag.T27CA_L2	:= P27CA_L2.O62T;
	ProtFlag.L27CA_L2	:= L27CA_L2.Out;
	//27V1
	ProtFlag.P27V1_L1	:= P27V1_L1.O62;
	ProtFlag.T27V1_L1	:= P27V1_L1.O62T;
	ProtFlag.L27V1_L1	:= L27V1_L1.Out;	
	ProtFlag.P27V1_L2	:= P27V1_L2.O62;
	ProtFlag.T27V1_L2	:= P27V1_L2.O62T;
	ProtFlag.L27V1_L2	:= L27V1_L2.Out;
	//81O
	ProtFlag.P81O_L1	:= P81O_L1.O62;
	ProtFlag.T81O_L1	:= P81O_L1.O62T;
	ProtFlag.L81O_L1	:= L81O_L1.Out;	
	ProtFlag.P81O_L2	:= P81O_L2.O62;
	ProtFlag.T81O_L2	:= P81O_L2.O62T;
	ProtFlag.L81O_L2	:= L81O_L2.Out;
	//81U
	ProtFlag.P81U_L1	:= P81U_L1.O62;
	ProtFlag.T81U_L1	:= P81U_L1.O62T;
	ProtFlag.L81U_L1	:= L81U_L1.Out;	
	ProtFlag.P81U_L2	:= P81U_L2.O62;
	ProtFlag.T81U_L2	:= P81U_L2.O62T;
	ProtFlag.L81U_L2	:= L81U_L2.Out;
	//32OP
	ProtFlag.P32OP_L1	:= P32OP_L1.O62;
	ProtFlag.T32OP_L1	:= P32OP_L1.O62T;
	ProtFlag.L32OP_L1	:= L32OP_L1.Out;
	//32UP
	ProtFlag.P32UP_L1	:= P32UP_L1.O62;
	ProtFlag.T32UP_L1	:= P32UP_L1.O62T;
	ProtFlag.L32UP_L1	:= L32UP_L1.Out;
	//32OQ
	ProtFlag.P32OQ_L1	:= P32OQ_L1.O62;
	ProtFlag.T32OQ_L1	:= P32OQ_L1.O62T;
	ProtFlag.L32OQ_L1	:= L32OQ_L1.Out;
	//32UQ
	ProtFlag.P32UQ_L1	:= P32UQ_L1.O62;
	ProtFlag.T32UQ_L1	:= P32UQ_L1.O62T;
	ProtFlag.L32UQ_L1	:= L32UQ_L1.Out;
	//24
	ProtFlag.P24_L1	:= P24_L1.O24;
	ProtFlag.T24_L1	:= P24_L1.O24T;
	ProtFlag.L24_L1	:= L24_L1.Out;
	//40
	ProtFlag.P40_L1	:= P40_L1.O40Z;
	ProtFlag.T40_L1	:= P40_L1.O40ZT;
	ProtFlag.L40_L1	:= L40_L1.Out;	
	ProtFlag.P40_L2	:= P40_L2.O40Z;
	ProtFlag.T40_L2	:= P40_L2.O40ZT;
	ProtFlag.L40_L2	:= L40_L2.Out;
	//50P
	ProtFlag.P50PA_L1	:= P50PA_L1.O62;
	ProtFlag.T50PA_L1	:= P50PA_L1.O62T;
	ProtFlag.L50PA_L1	:= L50PA_L1.Out;
	ProtFlag.P50PB_L1	:= P50PB_L1.O62;
	ProtFlag.T50PB_L1	:= P50PB_L1.O62T;
	ProtFlag.L50PB_L1	:= L50PB_L1.Out;
	ProtFlag.P50PC_L1	:= P50PC_L1.O62;
	ProtFlag.T50PC_L1	:= P50PC_L1.O62T;
	ProtFlag.L50PC_L1	:= L50PC_L1.Out;
	ProtFlag.P50PA_L2	:= P50PA_L2.O62;
	ProtFlag.T50PA_L2	:= P50PA_L2.O62T;
	ProtFlag.L50PA_L2	:= L50PA_L2.Out;
	ProtFlag.P50PB_L2	:= P50PB_L2.O62;
	ProtFlag.T50PB_L2	:= P50PB_L2.O62T;
	ProtFlag.L50PB_L2	:= L50PB_L2.Out;
	ProtFlag.P50PC_L2	:= P50PC_L2.O62;
	ProtFlag.T50PC_L2	:= P50PC_L2.O62T;
	ProtFlag.L50PC_L2	:= L50PC_L2.Out;
	//50Q
	ProtFlag.P50Q_L1	:= P50Q_L1.O62;
	ProtFlag.T50Q_L1	:= P50Q_L1.O62T;
	ProtFlag.L50Q_L1	:= L50Q_L1.Out;	
	ProtFlag.P50Q_L2	:= P50Q_L2.O62;
	ProtFlag.T50Q_L2	:= P50Q_L2.O62T;
	ProtFlag.L50Q_L2	:= L50Q_L2.Out;
	//50G
	ProtFlag.P50G_L1	:= P50G_L1.O62;
	ProtFlag.T50G_L1	:= P50G_L1.O62T;
	ProtFlag.L50G_L1	:= L50G_L1.Out;	
	ProtFlag.P50G_L2	:= P50G_L2.O62;
	ProtFlag.T50G_L2	:= P50G_L2.O62T;
	ProtFlag.L50G_L2	:= L50G_L2.Out;
	//51V
	ProtFlag.P51VA_L1	:= P51VA_L1.O51V;
	ProtFlag.T51VA_L1	:= P51VA_L1.O51VT;
	ProtFlag.R51VA_L1	:= P51VA_L1.O51VR;
	ProtFlag.L51VA_L1	:= L51VA_L1.Out;
	ProtFlag.P51VB_L1	:= P51VB_L1.O51V;
	ProtFlag.T51VB_L1	:= P51VB_L1.O51VT;
	ProtFlag.R51VB_L1	:= P51VB_L1.O51VR;
	ProtFlag.L51VB_L1	:= L51VB_L1.Out;
	ProtFlag.P51VC_L1	:= P51VC_L1.O51V;
	ProtFlag.T51VC_L1	:= P51VC_L1.O51VT;
	ProtFlag.R51VC_L1	:= P51VC_L1.O51VR;
	ProtFlag.L51VC_L1	:= L51VC_L1.Out;
	//51P
	ProtFlag.P51PA_L1	:= P51PA_L1.O51V;
	ProtFlag.T51PA_L1	:= P51PA_L1.O51VT;
	ProtFlag.R51PA_L1	:= P51PA_L1.O51VR;
	ProtFlag.L51PA_L1	:= L51PA_L1.Out;
	ProtFlag.P51PB_L1	:= P51PB_L1.O51V;
	ProtFlag.T51PB_L1	:= P51PB_L1.O51VT;
	ProtFlag.R51PB_L1	:= P51PB_L1.O51VR;
	ProtFlag.L51PB_L1	:= L51PB_L1.Out;
	ProtFlag.P51PC_L1	:= P51PC_L1.O51V;
	ProtFlag.T51PC_L1	:= P51PC_L1.O51VT;
	ProtFlag.R51PC_L1	:= P51PC_L1.O51VR;
	ProtFlag.L51PC_L1	:= L51PC_L1.Out;
	//51Q
	ProtFlag.P51Q_L1	:= P51Q_L1.O51V;
	ProtFlag.T51Q_L1	:= P51Q_L1.O51VT;
	ProtFlag.R51Q_L1	:= P51Q_L1.O51VR;
	ProtFlag.L51Q_L1	:= L51Q_L1.Out;
	//51G
	ProtFlag.P51G_L1	:= P51G_L1.O51V;
	ProtFlag.T51G_L1	:= P51G_L1.O51VT;
	ProtFlag.R51G_L1	:= P51G_L1.O51VR;
	ProtFlag.L51G_L1	:= L51G_L1.Out;
	
	/////////////
	/// RESET ///
	/////////////
	IF Protection.di.reset THEN
		Protection.di.reset	:= FALSE;
	END_IF;

//    EvtGroup( ident := Event );
                  
    
END_PROGRAM
