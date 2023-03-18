(*PWR Parameters*)

TYPE
	PgsPwrParType : 	STRUCT 
		CtrlHz : PgsPwrChzParType;
		CtrlP : PgsPwrCpParType;
	END_STRUCT;
	PgsPwrPrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_time : UDINT;
		cycle_dt : REAL;
		old : PgsPwrOldType;
		CtrlHz : PgsPwrChzPrivType;
		CtrlP : PgsPwrCpPrivType;
	END_STRUCT;
	PgsPwrOldType : 	STRUCT 
		Status : PgsPwrStatusType;
		Unload : BOOL;
		Online : BOOL;
		fastSetHz : REAL;
		fastSetP : REAL;
	END_STRUCT;
END_TYPE

(*PWR CTRL HZ*)

TYPE
	PgsPwrChzParType : 	STRUCT 
		Ref : REAL;
		RefMax : REAL;
		RefMin : REAL;
		dRefOn : REAL; (*Ratio of Ref variation in p.u/seconds*)
		dRefOff : REAL; (*Ratio of Ref variation in p.u/seconds*)
		Offset : REAL;
		Min : REAL;
		Max : REAL;
		PID : PgsPidParType;
	END_STRUCT;
	PgsPwrChzPrivType : 	STRUCT 
		ramp : PgsRampType;
		pid : PgsPidType;
	END_STRUCT;
END_TYPE

(*PWR CTRL P*)

TYPE
	PgsPwrCpParType : 	STRUCT 
		Ref : REAL;
		RefMax : REAL;
		RefMin : REAL;
		dRefOn : REAL; (*Ratio of Ref variation in p.u/seconds*)
		dRefOff : REAL; (*Ratio of Ref variation in p.u/seconds*)
		PID : PgsPidParType;
		Offset : REAL;
		Min : REAL;
		Max : REAL;
	END_STRUCT;
	PgsPwrCpPrivType : 	STRUCT 
		ramp : PgsRampType;
		pid : PgsPidType;
	END_STRUCT;
END_TYPE

(*PWR Digital Inputs*)

TYPE
	PgsPwrDigInputsType : 	STRUCT 
		Start : BOOL;
		Stop : BOOL;
		Reset : BOOL;
		Unload : BOOL;
		Online : BOOL;
		RefUp : BOOL;
		RefDown : BOOL;
	END_STRUCT;
END_TYPE

(*PWR SetPoints*)

TYPE
	PgsPwrSetPointsType : 	STRUCT 
		SetHz : REAL;
		fastSetHz : REAL;
		SetP : REAL;
		fastSetP : REAL;
	END_STRUCT;
END_TYPE

(*PWR DigOutputs Types:*)

TYPE
	PgsPwrDigOutpusType : 	STRUCT 
		Status : PgsPwrDigOutpusStatusType;
		Alarm : PgsPwrDigOutpusAlarmType;
		Trip : PgsPwrDigOutpusTripType;
	END_STRUCT;
	PgsPwrDigOutpusStatusType : 	STRUCT 
		Enable : BOOL;
		Unloaded : BOOL;
	END_STRUCT;
	PgsPwrDigOutpusAlarmType : 	STRUCT 
		LimiterMax : BOOL;
		LimiterMin : BOOL;
	END_STRUCT;
	PgsPwrDigOutpusTripType : 	STRUCT 
		Trip : BOOL;
		MeterIdent : BOOL;
		CtrlDisabled : BOOL;
	END_STRUCT;
END_TYPE

(*PWR Enum Type*)

TYPE
	PgsPwrStatusType : 
		(
		PGS_PWR_ST_STOPPED,
		PGS_PWR_ST_TRIP,
		PGS_PWR_ST_HZ,
		PGS_PWR_ST_P,
		PGS_PWR_ST_UPLOADING,
		PGS_PWR_ST_DOWNLOADING
		);
END_TYPE
