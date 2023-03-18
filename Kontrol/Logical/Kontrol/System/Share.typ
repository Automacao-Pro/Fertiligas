
TYPE
	PgsSysParType : 	STRUCT 
		Sync : PgsSyncParType;
		Exc : PgsExcParType;
		Gen : PgsGenParType;
	END_STRUCT;
	PgsSyncParType : 	STRUCT 
		U1Prim : REAL; (*Volts*)
		U1Sec : REAL; (*Volts*)
		Enable3Phase : REAL;
		Connection : REAL;
		U1Nom : REAL; (*Volts*)
		UBmin : REAL;
		dFmax : REAL; (*Hz*)
		dFmin : REAL; (*Hz*)
		dUmax : REAL; (*%*)
		dAngleMax : REAL; (*Degrees*)
		PhaseShift : REAL; (*Degrees*)
	END_STRUCT;
	PgsExcParType : 	STRUCT 
		UexcPrim : REAL; (*Volts*)
		UexcSec : REAL; (*Volts*)
		UexcNom : REAL; (*Volts*)
	END_STRUCT;
	PgsGenParType : 	STRUCT 
		UmPrim : REAL; (*Volts*)
		UmSec : REAL; (*Volts*)
		ImPrim : REAL; (*Amper*)
		ImSec : REAL; (*Amper*)
		UmNom : REAL; (*Volts*)
		SmNom : REAL; (*kW*)
		FmNom : REAL; (*Hz*)
		UfMin : REAL; (*Vcc*)
		UfMax : REAL; (*Vcc*)
		UfNom : REAL; (*Volts*)
		IfMin : REAL; (*Acc*)
		IfMax : REAL; (*Acc*)
		IfNom : REAL; (*Amper*)
		RpmNom : REAL; (*RPM*)
		PPR1 : REAL; (*Pulse Per Revolution*)
		Pos1_0p : REAL; (*mA or V*)
		Pos1_100p : REAL; (*mA or V*)
		Pos2_0p : REAL; (*mA or V*)
		Pos2_100p : REAL; (*mA or V*)
		Pos3_0p : REAL; (*mA or V*)
		Pos3_100p : REAL; (*mA or V*)
		ClockWise : REAL;
		Connection : REAL;
		dRpm1Max : REAL; (*RPM/s*)
		PPR2 : REAL; (*Pulse Per Revolution*)
		dRpm2Max : REAL; (*RPM/s*)
	END_STRUCT;
	PgsSysUpdateType : 	STRUCT 
		UpdateGen : BOOL;
		UpdateSync : BOOL;
		UpdateBus : BOOL;
		UpdateProt : BOOL;
		ResetRunningHourMeter : BOOL;
		ResetOnlineHourMeter : BOOL;
		ResetEnergy : BOOL;
		EnableSync : BOOL;
		EnableDeadBus : BOOL;
		reserv6 : BOOL;
		reserv7 : BOOL;
		UpdateIO : BOOL;
		reserv9 : BOOL;
		reserv10 : BOOL;
		reserv11 : BOOL;
		RestoreAll : BOOL;
		SaveAll : BOOL;
		UpdateAll : BOOL;
		var1 : BOOL;
		var2 : BOOL;
		var3 : BOOL;
		var4 : BOOL;
		var5 : BOOL;
		var6 : BOOL;
		var7 : BOOL;
		var8 : BOOL;
		var9 : BOOL;
		var10 : BOOL;
		var11 : BOOL;
		var12 : BOOL;
		var13 : BOOL;
		var14 : BOOL;
		var15 : BOOL;
		var16 : BOOL;
		var17 : BOOL;
		var18 : BOOL;
		var19 : BOOL;
		var20 : BOOL;
		var21 : BOOL;
		var22 : BOOL;
		var23 : BOOL;
		var24 : BOOL;
		var25 : BOOL;
		var26 : BOOL;
		var27 : BOOL;
		var28 : BOOL;
		var29 : BOOL;
		var30 : BOOL;
		var31 : BOOL;
		var32 : BOOL;
	END_STRUCT;
	PgsIOParType : 	STRUCT 
		AI1Type : REAL;
		AI2Type : REAL;
		AI3Type : REAL;
		AI4Type : REAL;
		AO1Type : REAL;
		AO2Type : REAL;
		AO3Type : REAL;
		AO4Type : REAL;
		AO1min : REAL; (*Analog Output % => Minumum Control*)
		AO1max : REAL; (*Analog Output % => Maximum Control*)
		AO2min : REAL; (*Analog Output % => Minumum Control*)
		AO2max : REAL; (*Analog Output % => Maximum Control*)
		AO3min : REAL; (*Analog Output % => Minumum Control*)
		AO3max : REAL; (*Analog Output % => Maximum Control*)
		AO4min : REAL; (*Analog Output % => Minumum Control*)
		AO4max : REAL; (*Analog Output % => Maximum Control*)
	END_STRUCT;
END_TYPE
