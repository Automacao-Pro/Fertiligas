
FUNCTION_BLOCK Pgs0985Update (*X20CM0985 Configuration Block - Update Hardware*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
	END_VAR
	VAR_OUTPUT
		Status : UINT;
	END_VAR
	VAR
		priv : Pgs0985UpdatePrivType := (step:=0);
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985 (*X20CM0985 Configuration Block - General*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		pDeviceName : UDINT; (*device name given as a pointer*)
		Fnom : REAL;
		EnableSetDO5 : BOOL; (*Enable DO5 to be setted by Software*)
		EnableSetDO6 : BOOL; (*Enable DO6 to be setted by Software*)
		ClockWise : BOOL; (*Set Counter ClockWise Phase Sequence*)
	END_VAR
	VAR_OUTPUT
		Ident : UDINT;
	END_VAR
	VAR
		priv : Pgs0985PrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985Gen (*X20CM0985 Configuration Block - Generator*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		Connection : Pgs0985ConnectionType := PGS_0985_CON_ABCN;
		Vprim : REAL := 115; (*Voltage phase-phase primary of PT*)
		Vsec : REAL := 115; (*Voltage phase-phase secundary of PT*)
		Vnom : REAL := 115; (*Nominal Generator Voltage phase-phase*)
		Iprim : REAL := 5; (*Current of primary CT*)
		Isec : USINT := 5; (*1A / 5A secundary CT*)
		Inom : REAL := 5; (*Nominal Generator Current*)
		EnableHarmonic : BOOL := FALSE; (*Configuration of measurement of power and power factor*)
		Tfilter : UINT := 100; (*Low pass filter amount of power: 0-300ms*)
		D02Pulse : REAL; (*kWh/pulse*)
	END_VAR
	VAR_OUTPUT
		Vgain : REAL;
		Igain : REAL;
		Sgain : REAL;
	END_VAR
	VAR
		priv : Pgs0985GenPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985GenPu (*X20CM0985 Configuration Block - Generator Voltage Protection*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		EnableLine : BOOL; (*3 line-to-line voltage protection*)
		EnablePhase : BOOL; (*3 phase voltage protection*)
		Umax1 : REAL; (*Overvoltage Limit 1 (0 to 200%)*)
		TUmax1 : REAL; (*Response time for Overvoltage Limit 1 (0.5 to 10s)*)
		Umax2 : REAL; (*Overvoltage Limit 2 (0 to 200%)*)
		TUmax2 : REAL; (*Response time for Overvoltage Limit 2 (0.5 to 10s)*)
		Umin1 : REAL; (*Undervoltage Limit 1 (0 to 200%)*)
		TUmin1 : REAL; (*Response time for Undervoltage Limit 1 (0.5 to 10s)*)
		Umin2 : REAL; (*Undervoltage Limit 2 (0 to 200%)*)
		TUmin2 : REAL; (*Response time for Undervoltage Limit 2 (0.5 to 10s)*)
	END_VAR
	VAR
		priv : Pgs0985GenPuPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985GenPf (*X20CM0985 Configuration Block - Generator Frequency Protection*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		Fmax1 : REAL; (*OverFrequency Limit 1 (0 to 200%)*)
		TFmax1 : REAL; (*Response time for OverFrequency Limit 1 (0.5 to 10s)*)
		Fmax2 : REAL; (*OverFrequency Limit 2 (0 to 200%)*)
		TFmax2 : REAL; (*Response time for OverFrequency Limit 2 (0.5 to 10s)*)
		Fmin1 : REAL; (*UnderFrequency Limit 1 (0 to 200%)*)
		TFmin1 : REAL; (*Response time for UnderFrequency Limit 1 (0.5 to 10s)*)
		Fmin2 : REAL; (*UnderFrequency Limit 2 (0 to 200%)*)
		TFmin2 : REAL; (*Response time for UnderFrequency Limit 2 (0.5 to 10s)*)
	END_VAR
	VAR
		priv : Pgs0985GenPfPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985GenPa (*X20CM0985 Configuration Block - Generator Asymmetry Protection*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		Uas : REAL; (*Generator voltage asymmetry (0 to 30%)*)
		TUas : REAL; (*Response time for Generator voltage asymmetry (0.5 to 10s)*)
		Inom : REAL; (*Nominal Curent on Generator (A)*)
		K1 : REAL; (*Load time constant for current asymmetry (0.1 to 6553.5s)*)
		K2 : REAL; (*Unbalanced load constant (0.08 to 0.15)*)
	END_VAR
	VAR
		priv : Pgs0985GenPaPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985GenPc (*X20CM0985 Configuration Block - Generator Current Protection*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		I50N : REAL; (*Maximum limit of Neutral Current (0 to 100%)*)
		TI50N : REAL; (*Response time for Maximum limit of Neutral Current (0.5 to 10s)*)
		I50 : REAL; (*Short Circuit Current Limit (100 to 500%)*)
		TI50 : REAL; (*Response time for Short Circuit Current Limit (0.04 to 5s)*)
		I51 : REAL; (*OverCurrent Limit (100 to 200%)*)
		Iths : REAL; (*Integration coefficient for OverCurrent (0.1 to 2)*)
	END_VAR
	VAR
		priv : Pgs0985GenPcPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985GenPp (*X20CM0985 Configuration Block - Generator Power Protection*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		Qmin : REAL; (*Reactive Power Limit (kVAr)*)
		TQmin : REAL; (*Response time for Reactive Power Limit (0.5 to 10s)*)
		Pmax : REAL; (*Actve Power Limit (0 to 200%)*)
		TPmax : REAL; (*Response time for Active Power Limit (0.5 to 10s)*)
		NPmax : REAL; (*Negative Power Limit (0 to 200%)*)
		TNPmax : REAL; (*Response time for Negative Power Limit (0.5 to 10s)*)
	END_VAR
	VAR
		priv : Pgs0985GenPpPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985DO1 (*X20CM0985 Configuration Block - DO1 Configuration*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		ResetManual : BOOL;
		T59_1 : BOOL;
		T59_2 : BOOL;
		T27_1 : BOOL;
		T27_2 : BOOL;
		T81O_1 : BOOL;
		T81O_2 : BOOL;
		T81U_1 : BOOL;
		T81U_2 : BOOL;
		T60V : BOOL;
		T60I : BOOL;
		T50N : BOOL;
		T50 : BOOL;
		T51 : BOOL;
		T32Q : BOOL;
		T32P : BOOL;
		T32N : BOOL;
	END_VAR
	VAR
		priv : Pgs0985DO1PrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985Main (*X20CM0985 Configuration Block - Main*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		Enable3phase : BOOL := FALSE; (*Enable X4-X6 as  3-phase input*)
		Connection1 : Pgs0985ConnectionType := PGS_0985_CON_ABCN;
		V1prim : REAL := 115; (*Voltage phase-phase primary of PT*)
		V1sec : REAL := 115; (*Voltage phase-phase secundary of PT*)
		V1nom : REAL := 115; (*Nominal Main1 Voltage phase-phase*)
		Connection2 : Pgs0985ConnectionType := PGS_0985_CON_ABCN;
		V2prim : REAL := 115; (*Voltage primary of PT*)
		V2sec : REAL := 115; (*Voltage secundary of PT*)
		V2nom : REAL := 115; (*Nominal Main2 Voltage*)
	END_VAR
	VAR_OUTPUT
		V1gain : REAL;
		V2gain : REAL;
	END_VAR
	VAR
		priv : Pgs0985MainPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985Bus (*X20CM0985 Configuration Block - Bus*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		Connection : Pgs0985ConnectionType := PGS_0985_CON_ABCN;
		Vprim : REAL := 115; (*Voltage phase-phase primary of PT*)
		Vsec : REAL := 115; (*Voltage phase-phase secundary of PT*)
		Vnom : REAL := 115; (*Nominal Bus Voltage phase-phase*)
	END_VAR
	VAR_OUTPUT
		Vgain : REAL;
	END_VAR
	VAR
		priv : Pgs0985BusPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985Sync (*X20CM0985 Configuration Block - Synchronization*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		Mode : Pgs0985SyncType;
		ChangeDO4toDo6 : BOOL;
		dFmax : REAL; (*Max. differential frequency (0.02 to 0.49 Hz)*)
		dFmin : REAL; (*Min. differential frequency (-0.49 to 0 Hz)*)
		dUmax : REAL; (*Max. differential voltage (0.1 to 30.0 %)*)
		dAngleMax : REAL; (*Max. permitted differential angle (0.1 to 60.0 degree)*)
		PhaseShift : REAL; (*Phase rotation of sync mains 1*)
		UBmin : REAL; (*Dead bus Voltage ( 0 - 100%)*)
		DO4Pulse : REAL; (*Pulse Duration on the turn-on delay (0.04 to 1s)*)
		DO4SwTime : REAL; (*Switching response time of the power switch (0.04 to 0.3s)*)
		DO6Pulse : REAL; (*Pulse Duration on the turn-on delay (0.04 to 1s)*)
		DO6SwTime : REAL; (*Switching response time of the power switch (0.04 to 0.3s)*)
	END_VAR
	VAR
		priv : Pgs0985SyncPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Pgs0985Meter (*X20CM0985 - Meter *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : UDINT;
		Registers : Pgs0985Regs;
	END_VAR
	VAR_OUTPUT
		Ug1 : REAL;
		Ug2 : REAL;
		Ug3 : REAL;
		Ug1Angle : REAL;
		Ug2Angle : REAL;
		Ug3Angle : REAL;
		Ug12 : REAL;
		Ug23 : REAL;
		Ug31 : REAL;
		Ug : REAL;
		Ig1 : REAL;
		Ig2 : REAL;
		Ig3 : REAL;
		Ig1Angle : REAL;
		Ig2Angle : REAL;
		Ig3Angle : REAL;
		Ig : REAL;
		Ign : REAL;
		Igm_dyn : REAL;
		Pg : REAL;
		Qg : REAL;
		Sg : REAL;
		PFg : REAL;
		Fg : REAL;
		Ub1 : REAL;
		Ub2 : REAL;
		Ub3 : REAL;
		Ub12 : REAL;
		Ub23 : REAL;
		Ub31 : REAL;
		Fb : REAL;
		Us1 : REAL;
		Fs1 : REAL;
		Us2 : REAL;
		Fs2 : REAL;
		Un1 : REAL;
		Un2 : REAL;
		Un3 : REAL;
		Un12 : REAL;
		Un23 : REAL;
		Un31 : REAL;
		Fn : REAL;
		dAngle : REAL; (*Differential angle between sync mains in degrees*)
		dU : REAL; (*Differential angle between sync mains in % of Vnom*)
	END_VAR
END_FUNCTION_BLOCK
