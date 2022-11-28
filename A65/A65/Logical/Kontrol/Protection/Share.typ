
TYPE
	PgsProtType : 	STRUCT 
		di : PgsProtDiType;
		do : PgsProtDoType;
		ai : PgsProtAiType;
	END_STRUCT;
	PgsProtDiType : 	STRUCT 
		reset : BOOL;
		crowbar_ok : BOOL;
		pwr_temp_ok : BOOL;
		relay_86E_ok : BOOL;
	END_STRUCT;
	PgsProtDoType : 	STRUCT 
		trip_86e : BOOL;
		trip_86h : BOOL;
		trip_50bf : BOOL;
	END_STRUCT;
	PgsProtAiType : 	STRUCT 
		ExcTemp : INT;
	END_STRUCT;
	PgsProtParType : 	STRUCT 
		P59P_L1 : REAL; (*Phase V in p.u.*)
		T59P_L1 : REAL; (*second*)
		P59PP_L1 : REAL; (*Phase-Phase V in p.u.*)
		T59PP_L1 : REAL; (*second*)
		P59V1_L1 : REAL; (*Phase V in p.u.*)
		T59V1_L1 : REAL; (*second*)
		P59Q_L1 : REAL; (*Phase V in p.u.*)
		T59Q_L1 : REAL; (*second*)
		P59G_L1 : REAL; (*Phase V in p.u.*)
		T59G_L1 : REAL; (*second*)
		P59P_L2 : REAL; (*Phase V in p.u.*)
		T59P_L2 : REAL; (*second*)
		P59PP_L2 : REAL; (*Phase-Phase V in p.u.*)
		T59PP_L2 : REAL; (*second*)
		P59V1_L2 : REAL; (*Phase V in p.u.*)
		T59V1_L2 : REAL; (*second*)
		P59Q_L2 : REAL; (*Phase V in p.u.*)
		T59Q_L2 : REAL; (*second*)
		P59G_L2 : REAL; (*Phase V in p.u.*)
		T59G_L2 : REAL; (*second*)
		P27P_L1 : REAL; (*Phase V in p.u.*)
		T27P_L1 : REAL; (*second*)
		P27PP_L1 : REAL; (*Phase-Phase V in p.u.*)
		T27PP_L1 : REAL; (*second*)
		P27V1_L1 : REAL; (*Phase V in p.u.*)
		T27V1_L1 : REAL; (*second*)
		P27P_L2 : REAL; (*Phase V in p.u.*)
		T27P_L2 : REAL; (*second*)
		P27PP_L2 : REAL; (*Phase-Phase V in p.u.*)
		T27PP_L2 : REAL; (*second*)
		P27V1_L2 : REAL; (*Phase V in p.u.*)
		T27V1_L2 : REAL; (*second*)
		P81O_L1 : REAL;
		T81O_L1 : REAL;
		P81O_L2 : REAL;
		T81O_L2 : REAL;
		P81U_L1 : REAL;
		T81U_L1 : REAL;
		P81U_L2 : REAL;
		T81U_L2 : REAL;
		P32OP_L1 : REAL;
		T32OP_L1 : REAL;
		P32UP_L1 : REAL;
		T32UP_L1 : REAL;
		P32OQ_L1 : REAL;
		T32OQ_L1 : REAL;
		P32UQ_L1 : REAL;
		T32UQ_L1 : REAL;
		P50P_L1 : REAL;
		T50P_L1 : REAL;
		P50Q_L1 : REAL;
		T50Q_L1 : REAL;
		P50G_L1 : REAL;
		T50G_L1 : REAL;
		P50P_L2 : REAL;
		T50P_L2 : REAL;
		P50Q_L2 : REAL;
		T50Q_L2 : REAL;
		P50G_L2 : REAL;
		T50G_L2 : REAL;
		P51V_L1 : REAL;
		T51V_L1 : REAL;
		C51V_L1 : REAL;
		P51P_L1 : REAL;
		T51P_L1 : REAL;
		C51P_L1 : REAL;
		P51Q_L1 : REAL;
		T51Q_L1 : REAL;
		C51Q_L1 : REAL;
		P51G_L1 : REAL;
		T51G_L1 : REAL;
		C51G_L1 : REAL;
		P24_L1 : REAL;
		T24_L1 : REAL;
		D40_L1 : REAL;
		O40_L1 : REAL;
		T40_L1 : REAL;
		D40_L2 : REAL;
		O40_L2 : REAL;
		T40_L2 : REAL;
		T50BF : REAL;
	END_STRUCT;
	PgsProtFlagType : 	STRUCT 
		KeyInvalid : BOOL;
		WatchDog : BOOL;
		GenPhAFault : BOOL;
		GenPhBFault : BOOL;
		GenPhCFault : BOOL;
		ExcPhAFault : BOOL;
		ExcPhBFault : BOOL;
		ExcPhCFault : BOOL;
		ExcCrowBar : BOOL;
		ExcOverTemp : BOOL;
		UgPhSeqFault : BOOL;
		IgPhSeqFault : BOOL;
		Us1PhSeqFault : BOOL;
		PwrSrcCpuIOFault : BOOL;
		PwrSrcM1IOFault : BOOL;
		M1Fault : BOOL;
		M2Fault : BOOL;
		M3Fault : BOOL;
		T86E : BOOL;
		T86H : BOOL;
		P59A_L1 : BOOL;
		T59A_L1 : BOOL;
		L59A_L1 : BOOL;
		P59B_L1 : BOOL;
		T59B_L1 : BOOL;
		L59B_L1 : BOOL;
		P59C_L1 : BOOL;
		T59C_L1 : BOOL;
		L59C_L1 : BOOL;
		P59AB_L1 : BOOL;
		T59AB_L1 : BOOL;
		L59AB_L1 : BOOL;
		P59BC_L1 : BOOL;
		T59BC_L1 : BOOL;
		L59BC_L1 : BOOL;
		P59CA_L1 : BOOL;
		T59CA_L1 : BOOL;
		L59CA_L1 : BOOL;
		P59V1_L1 : BOOL;
		T59V1_L1 : BOOL;
		L59V1_L1 : BOOL;
		P59Q_L1 : BOOL;
		T59Q_L1 : BOOL;
		L59Q_L1 : BOOL;
		P59G_L1 : BOOL;
		T59G_L1 : BOOL;
		L59G_L1 : BOOL;
		P59A_L2 : BOOL;
		T59A_L2 : BOOL;
		L59A_L2 : BOOL;
		P59B_L2 : BOOL;
		T59B_L2 : BOOL;
		L59B_L2 : BOOL;
		P59C_L2 : BOOL;
		T59C_L2 : BOOL;
		L59C_L2 : BOOL;
		P59AB_L2 : BOOL;
		T59AB_L2 : BOOL;
		L59AB_L2 : BOOL;
		P59BC_L2 : BOOL;
		T59BC_L2 : BOOL;
		L59BC_L2 : BOOL;
		P59CA_L2 : BOOL;
		T59CA_L2 : BOOL;
		L59CA_L2 : BOOL;
		P59V1_L2 : BOOL;
		T59V1_L2 : BOOL;
		L59V1_L2 : BOOL;
		P59Q_L2 : BOOL;
		T59Q_L2 : BOOL;
		L59Q_L2 : BOOL;
		P59G_L2 : BOOL;
		T59G_L2 : BOOL;
		L59G_L2 : BOOL;
		P27A_L1 : BOOL;
		T27A_L1 : BOOL;
		L27A_L1 : BOOL;
		P27B_L1 : BOOL;
		T27B_L1 : BOOL;
		L27B_L1 : BOOL;
		P27C_L1 : BOOL;
		T27C_L1 : BOOL;
		L27C_L1 : BOOL;
		P27AB_L1 : BOOL;
		T27AB_L1 : BOOL;
		L27AB_L1 : BOOL;
		P27BC_L1 : BOOL;
		T27BC_L1 : BOOL;
		L27BC_L1 : BOOL;
		P27CA_L1 : BOOL;
		T27CA_L1 : BOOL;
		L27CA_L1 : BOOL;
		P27V1_L1 : BOOL;
		T27V1_L1 : BOOL;
		L27V1_L1 : BOOL;
		P27A_L2 : BOOL;
		T27A_L2 : BOOL;
		L27A_L2 : BOOL;
		P27B_L2 : BOOL;
		T27B_L2 : BOOL;
		L27B_L2 : BOOL;
		P27C_L2 : BOOL;
		T27C_L2 : BOOL;
		L27C_L2 : BOOL;
		P27AB_L2 : BOOL;
		T27AB_L2 : BOOL;
		L27AB_L2 : BOOL;
		P27BC_L2 : BOOL;
		T27BC_L2 : BOOL;
		L27BC_L2 : BOOL;
		P27CA_L2 : BOOL;
		T27CA_L2 : BOOL;
		L27CA_L2 : BOOL;
		P27V1_L2 : BOOL;
		T27V1_L2 : BOOL;
		L27V1_L2 : BOOL;
		P81O_L1 : BOOL;
		T81O_L1 : BOOL;
		L81O_L1 : BOOL;
		P81O_L2 : BOOL;
		T81O_L2 : BOOL;
		L81O_L2 : BOOL;
		P81U_L1 : BOOL;
		T81U_L1 : BOOL;
		L81U_L1 : BOOL;
		P81U_L2 : BOOL;
		T81U_L2 : BOOL;
		L81U_L2 : BOOL;
		P32OP_L1 : BOOL;
		T32OP_L1 : BOOL;
		L32OP_L1 : BOOL;
		P32UP_L1 : BOOL;
		T32UP_L1 : BOOL;
		L32UP_L1 : BOOL;
		P32OQ_L1 : BOOL;
		T32OQ_L1 : BOOL;
		L32OQ_L1 : BOOL;
		P32UQ_L1 : BOOL;
		T32UQ_L1 : BOOL;
		L32UQ_L1 : BOOL;
		P50PA_L1 : BOOL;
		T50PA_L1 : BOOL;
		L50PA_L1 : BOOL;
		P50PB_L1 : BOOL;
		T50PB_L1 : BOOL;
		L50PB_L1 : BOOL;
		P50PC_L1 : BOOL;
		T50PC_L1 : BOOL;
		L50PC_L1 : BOOL;
		P50Q_L1 : BOOL;
		T50Q_L1 : BOOL;
		L50Q_L1 : BOOL;
		P50G_L1 : BOOL;
		T50G_L1 : BOOL;
		L50G_L1 : BOOL;
		P50PA_L2 : BOOL;
		T50PA_L2 : BOOL;
		L50PA_L2 : BOOL;
		P50PB_L2 : BOOL;
		T50PB_L2 : BOOL;
		L50PB_L2 : BOOL;
		P50PC_L2 : BOOL;
		T50PC_L2 : BOOL;
		L50PC_L2 : BOOL;
		P50Q_L2 : BOOL;
		T50Q_L2 : BOOL;
		L50Q_L2 : BOOL;
		P50G_L2 : BOOL;
		T50G_L2 : BOOL;
		L50G_L2 : BOOL;
		P51VA_L1 : BOOL;
		T51VA_L1 : BOOL;
		R51VA_L1 : BOOL;
		L51VA_L1 : BOOL;
		P51VB_L1 : BOOL;
		T51VB_L1 : BOOL;
		R51VB_L1 : BOOL;
		L51VB_L1 : BOOL;
		P51VC_L1 : BOOL;
		T51VC_L1 : BOOL;
		R51VC_L1 : BOOL;
		L51VC_L1 : BOOL;
		P51PA_L1 : BOOL;
		T51PA_L1 : BOOL;
		R51PA_L1 : BOOL;
		L51PA_L1 : BOOL;
		P51PB_L1 : BOOL;
		T51PB_L1 : BOOL;
		R51PB_L1 : BOOL;
		L51PB_L1 : BOOL;
		P51PC_L1 : BOOL;
		T51PC_L1 : BOOL;
		R51PC_L1 : BOOL;
		L51PC_L1 : BOOL;
		P51Q_L1 : BOOL;
		T51Q_L1 : BOOL;
		R51Q_L1 : BOOL;
		L51Q_L1 : BOOL;
		P51G_L1 : BOOL;
		T51G_L1 : BOOL;
		R51G_L1 : BOOL;
		L51G_L1 : BOOL;
		P24_L1 : BOOL;
		T24_L1 : BOOL;
		L24_L1 : BOOL;
		P40_L1 : BOOL;
		T40_L1 : BOOL;
		L40_L1 : BOOL;
		P40_L2 : BOOL;
		T40_L2 : BOOL;
		L40_L2 : BOOL;
		RpmFault : BOOL;
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
END_TYPE
