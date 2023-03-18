(*AVR Parameters*)

TYPE
	PgsAvrParType : 	STRUCT 
		CtrlManual : PgsAvrManualParType;
		CtrlAuto : PgsAvrAutoParType;
		Limiter : PgsAvrLimiterParType;
		Protection : PgsAvProtParType;
	END_STRUCT;
	PgsAvrPrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_time : UDINT;
		cycle_dt : REAL;
		old : PgsAvrOldType;
		CtrlManual : PgsAvrManualPrivType;
		CtrlAuto : PgsAvrAutoPrivType;
		Protection : PgsAvrProtPrivType;
		Lmax : REAL;
		Lmin : REAL;
		LmaxActive : PgsAvrLimiterType;
		LminActive : PgsAvrLimiterType;
		pid_luh : PgsPidType;
		pid_lifh : PgsPidType;
		pid_lifl : PgsPidType;
		pid_lifhh : PgsPidType;
		pid_limhh : PgsPidType;
		pid_limhl : PgsPidType;
		pid_lpq : PgsPidType;
		lifh_time : REAL;
		limhh_time : REAL;
		limhl_time : REAL;
	END_STRUCT;
	PgsAvrOldType : 	STRUCT 
		Status : PgsAvrStatusType;
		CtrlManual : PgsAvrCtrlManualType;
		CtrlAuto : PgsAvrCtrlAutoType;
		Unload : BOOL;
		Online : BOOL;
		RefQ : REAL;
		RefPF : REAL;
		fastSetIf : REAL;
		fastSetUf : REAL;
		fastSetIm : REAL;
		fastSetUm : REAL;
		fastSetQ : REAL;
		fastSetPF : REAL;
	END_STRUCT;
END_TYPE

(*AVR Manual Controller*)

TYPE
	PgsAvrManualParType : 	STRUCT 
		CmIf : PgsAvrCmxxParType;
		CmUf : PgsAvrCmxxParType;
		CmIm : PgsAvrCmxxParType;
		Ctrl : PgsAvrCtrlManualType;
		EnableOL : BOOL;
	END_STRUCT;
	PgsAvrManualPrivType : 	STRUCT 
		CmIf : PgsAvrCmxxPrivType;
		CmUf : PgsAvrCmxxPrivType;
		CmIm : PgsAvrCmxxPrivType;
	END_STRUCT;
	PgsAvrCmxxParType : 	STRUCT 
		Enable : BOOL;
		dRefOn : REAL;
		dRefOff : REAL;
		PID : PgsPidParType;
	END_STRUCT;
	PgsAvrCmxxPrivType : 	STRUCT 
		ramp : PgsRampType;
		pid : PgsPidType;
	END_STRUCT;
END_TYPE

(*AVR Automatic Controller*)

TYPE
	PgsAvrAutoParType : 	STRUCT 
		SoftStart : PgsAvrSoftStartParType;
		CaUm0 : PgsAvrCa1ParType;
		CaUm1 : PgsAvrCa1ParType;
		CaQm : PgsAvrCa2ParType;
		CaPf : PgsAvrCa2ParType;
	END_STRUCT;
	PgsAvrAutoPrivType : 	STRUCT 
		OutOffline : REAL;
		SoftStart : PgsAvrSoftStartPrivType;
		CaUm0 : PgsAvrCa1PrivType;
		CaUm1 : PgsAvrCa1PrivType;
		CaQm : PgsAvrCa2PrivType;
		CaPf : PgsAvrCa2PrivType;
	END_STRUCT;
END_TYPE

(*AVR SoftStart*)

TYPE
	PgsAvrSoftStartParType : 	STRUCT 
		RefUm : REAL; (*Machine Voltage Set Point in p.u.*)
		dRefOn : REAL; (*Ratio of Ref variation in p.u/seconds*)
		dRefOff : REAL; (*Ratio of Ref variation in p.u/seconds*)
		Offset : REAL; (*Initial Output Value*)
		RefUm0 : REAL; (*Voltage to Disable Field Flashing*)
		FFTmin : REAL; (*Field Flash Minimum Time*)
		FFTmax : REAL; (*Field Flash Maximum Time*)
	END_STRUCT;
	PgsAvrSoftStartPrivType : 	STRUCT 
		ramp : PgsRampType;
		ff_time : REAL;
		ff_enable : BOOL;
	END_STRUCT;
END_TYPE

(*AVR Primary Controller*)

TYPE
	PgsAvrCa1ParType : 	STRUCT 
		Enable : BOOL;
		Ref : REAL;
		RefMax : REAL;
		RefMin : REAL;
		dRefOn : REAL; (*Ratio of Ref variation in p.u/seconds*)
		dRefOff : REAL; (*Ratio of Ref variation in p.u/seconds*)
		Kdp : REAL;
		PID : PgsPidParType;
	END_STRUCT;
	PgsAvrCa1PrivType : 	STRUCT 
		ramp : PgsRampType;
		pid : PgsPidType;
	END_STRUCT;
END_TYPE

(*AVR Secundary Controller*)

TYPE
	PgsAvrCa2ParType : 	STRUCT 
		Enable : BOOL;
		Ref : REAL;
		RefMax : REAL;
		RefMin : REAL;
		dRefOn : REAL; (*Ratio of Ref variation in p.u/seconds*)
		dRefOff : REAL; (*Ratio of Ref variation in p.u/seconds*)
		PID : PgsPidParType;
		L2max : REAL;
		L2min : REAL;
		Kdp : REAL;
		PIDU : PgsPidParType;
	END_STRUCT;
	PgsAvrCa2PrivType : 	STRUCT 
		ramp : PgsRampType;
		pid : PgsPidType;
		pidu : PgsPidType;
	END_STRUCT;
END_TYPE

(*AVR Limiter*)

TYPE
	PgsAvrLimiterParType : 	STRUCT 
		Luh : PgsAvrLuhParType;
		Lifh : PgsAvrLcvParType;
		Lifl : PgsAvrLmtParType;
		Lifhh : PgsAvrLmtParType;
		Limh : PgsAvrLcvParType;
		Lpq : PgsAvrLpqParType;
	END_STRUCT;
	PgsAvrLuhParType : 	STRUCT 
		Enable : BOOL;
		Umin : REAL;
		Un : REAL;
		Fn : REAL;
		Kuh : REAL;
		PID : PgsPidParType;
	END_STRUCT;
	PgsAvrLcvParType : 	STRUCT 
		Enable : BOOL;
		SetPoint : REAL;
		Curve : PgsAvrCurveType;
		Time : REAL;
		PID : PgsPidParType;
	END_STRUCT;
	PgsAvrLmtParType : 	STRUCT 
		Enable : BOOL;
		SetPoint : REAL;
		PID : PgsPidParType;
	END_STRUCT;
	PgsAvrLpqParType : 	STRUCT 
		Enable : BOOL;
		Curve : PgsCurvePqParType;
		PID : PgsPidParType;
	END_STRUCT;
END_TYPE

(*AVR Protection*)

TYPE
	PgsAvProtParType : 	STRUCT 
		OverExcitation : PgsAvrProtExcParType;
		UnderExcitation : PgsAvrProtExcParType;
	END_STRUCT;
	PgsAvrProtPrivType : 	STRUCT 
		OverExcitation : PgsAvrProtExcPrivType;
		UnderExcitation : PgsAvrProtExcPrivType;
		fbk_time : REAL;
		ResetAlarm : BOOL;
	END_STRUCT;
END_TYPE

(*Avr Excitation Protection*)

TYPE
	PgsAvrProtExcParType : 	STRUCT 
		Level1 : REAL;
		Time1 : REAL;
		Level2 : REAL;
		Time2 : REAL;
	END_STRUCT;
	PgsAvrProtExcPrivType : 	STRUCT 
		time1 : REAL;
		time2 : REAL;
	END_STRUCT;
END_TYPE

(*AVR Digital Inputs*)

TYPE
	PgsAvrDigInputsType : 	STRUCT 
		Start : BOOL;
		Stop : BOOL;
		Auto : BOOL;
		Manual : BOOL;
		Reset : BOOL;
		Unload : BOOL;
		Online : BOOL;
		RefUp : BOOL;
		RefDown : BOOL;
	END_STRUCT;
END_TYPE

(*AVR SetPoints*)

TYPE
	PgsAvrSetPointsType : 	STRUCT 
		SetOut : REAL;
		SetIf : REAL;
		fastSetIf : REAL;
		SetUf : REAL;
		fastSetUf : REAL;
		SetIm : REAL;
		fastSetIm : REAL;
		SetUm : REAL;
		fastSetUm : REAL;
		SetQ : REAL;
		fastSetQ : REAL;
		SetPF : REAL;
		fastSetPF : REAL;
	END_STRUCT;
END_TYPE

(*AVR DigOutputs Types:*)

TYPE
	PgsAvrDigOutputsType : 	STRUCT 
		Status : PgsAvrDigOutputsStatusType;
		Alarm : PgsAvrDigOutputsAlarmType;
		Trip : PgsAvrDigOutputsTripType;
	END_STRUCT;
	PgsAvrDigOutputsStatusType : 	STRUCT 
		Enable : BOOL;
		VoltageOK : BOOL;
		FieldFlashOn : BOOL;
		Unloaded : BOOL;
	END_STRUCT;
	PgsAvrDigOutputsAlarmType : 	STRUCT 
		LimiterMax : BOOL;
		LimiterMin : BOOL;
		LimiterLuvh : BOOL;
		LimiterLifh : BOOL;
		LimiterLifl : BOOL;
		LimiterLifhh : BOOL;
		LimiterLimh : BOOL;
		LimiterLpq : BOOL;
		LimiterL2max : BOOL;
		LimiterL2min : BOOL;
		OverExcitation : BOOL;
		UnderExcitation : BOOL;
	END_STRUCT;
	PgsAvrDigOutputsTripType : 	STRUCT 
		Trip : BOOL;
		MeterIdent : BOOL;
		CtrlDisabled : BOOL;
		FieldFlashTimeout : BOOL;
		Feedback : BOOL;
		OverExcitation : BOOL;
		UnderExcitation : BOOL;
	END_STRUCT;
END_TYPE

(*AVR Enum Types:*)

TYPE
	PgsAvrModeType : 
		(
		PGS_AVR_MD_MANUAL,
		PGS_AVR_MD_AUTO
		);
	PgsAvrCtrlManualType : 
		(
		PGS_AVR_CM_OFF, (*Manual Channel in Trip*)
		PGS_AVR_CM_IF, (*Manual Field Current Control*)
		PGS_AVR_CM_UF, (*Manual Field Voltage Control*)
		PGS_AVR_CM_IM, (*Manual Machine Current Control*)
		PGS_AVR_CM_OL (*Manual Open Loop Control*)
		);
	PgsAvrCtrlAutoType : 
		(
		PGS_AVR_CA_OFF, (*Automatic Channel in Trip*)
		PGS_AVR_CA_UM_0, (*Automatic Machine Voltage Control 0*)
		PGS_AVR_CA_QM, (*Automatic Machine Reactive Control*)
		PGS_AVR_CA_PF, (*Automatic Power Factor Control*)
		PGS_AVR_CA_UM_1 (*Automatic Machine Voltage Control 1*)
		);
	PgsAvrStatusType : 
		(
		PGS_AVR_ST_OFF,
		PGS_AVR_ST_TRIP,
		PGS_AVR_ST_MANUAL,
		PGS_AVR_ST_AUTO,
		PGS_AVR_ST_STARTING,
		PGS_AVR_ST_STOPPING,
		PGS_AVR_ST_UPLOADING,
		PGS_AVR_ST_DOWNLOADING
		);
	PgsAvrCurveType : 
		(
		PGS_AVR_CV_00,
		PGS_AVR_CV_01,
		PGS_AVR_CV_02
		);
	PgsAvrLimiterType : 
		(
		PGS_AVR_LNULL,
		PGS_AVR_LUH,
		PGS_AVR_LIFH,
		PGS_AVR_LIFL,
		PGS_AVR_LIFHH,
		PGS_AVR_LIMH,
		PGS_AVR_LPQ
		);
END_TYPE
