(*GOV Parameters*)

TYPE
	PgsGovParType : 	STRUCT 
		CtrlManual : PgsGovManualParType;
		CtrlAuto : PgsGovAutoParType;
		Protection : PgsGovProtParType;
	END_STRUCT;
	PgsGovPrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_time : UDINT;
		cycle_dt : REAL;
		old : PgsGovOldType;
		CtrlAuto : PgsGovAutoPrivType;
		CtrlManual : PgsGovManualPrivType;
		Protection : PgsGovProtPrivType;
		time_unload : REAL;
	END_STRUCT;
	PgsGovOldType : 	STRUCT 
		Mode : PgsGovModeType;
		CtrlManual : PgsGovCtrlManualType;
		CtrlAuto : PgsGovCtrlAutoType;
		Status : PgsGovStatusType;
		Unload : BOOL;
		Online : BOOL;
		fastSetPos : REAL;
		fastSetRpm : REAL;
		fastSetHz : REAL;
		fastSetPwr : REAL;
	END_STRUCT;
END_TYPE

(*GOV Manual Controller*)

TYPE
	PgsGovManualParType : 	STRUCT 
		CmPos : PgsGovCmParType;
	END_STRUCT;
	PgsGovManualPrivType : 	STRUCT 
		ramp : PgsRampType;
	END_STRUCT;
	PgsGovCmParType : 	STRUCT 
		Enable : BOOL;
		dRefOn : REAL;
		dRefOff : REAL;
		RefMax : REAL;
		RefMin : REAL;
		Update : BOOL;
	END_STRUCT;
END_TYPE

(*GOV Automatic Controller*)

TYPE
	PgsGovAutoParType : 	STRUCT 
		SoftStart : PgsGovSoftStartParType;
		CaRpm0 : PgsGovCaRpmParType;
		CaRpm1 : PgsGovCaRpmParType;
		CaHz0 : PgsGovCaHzParType;
		CaHz1 : PgsGovCaHzParType;
		CaPwr : PgsGovCaPwrParType;
	END_STRUCT;
	PgsGovAutoPrivType : 	STRUCT 
		RotOffline : REAL;
		OutOffline : REAL;
		SoftStart : PgsGovSoftStartPrivType;
		CaRpm0 : PgsGovCaRpmPrivType;
		CaRpm1 : PgsGovCaRpmPrivType;
		CaHz0 : PgsGovCaHzPrivType;
		CaHz1 : PgsGovCaHzPrivType;
		CaPwr : PgsGovCaPwrPrivType;
	END_STRUCT;
END_TYPE

(*GOV Soft Start*)

TYPE
	PgsGovSoftStartParType : 	STRUCT 
		Pos0 : REAL; (*Initial Distributor Position*)
		dPos : REAL; (*Ratio of Dist Position variation in p.u/seconds*)
		Rpm0 : REAL; (*Rotation to status Stopped*)
		Rpm1 : REAL; (*Rotation to change the Control to Speed Mode*)
		Rpm2 : REAL; (*Rotation to end the Starting stage*)
		RpmBrake : REAL; (*Rotation to apply brake*)
		dRpmOn : REAL; (*Ration of Up Rotation variation in p.u/seconds*)
		dRpmOff : REAL; (*Ration of Down Rotation variation in p.u/seconds*)
		TRpm0 : REAL; (*Time to reach the Rpm0 rotation*)
		TRpm1 : REAL; (*Time to reach the Rpm1 rotation*)
		TRpm2 : REAL; (*Time to reach the Rpm2 rotation*)
	END_STRUCT;
	PgsGovSoftStartPrivType : 	STRUCT 
		ramp_rpm : PgsRampType;
		ramp_pos : PgsRampType;
		time0 : REAL;
		time1 : REAL;
		time2 : REAL;
	END_STRUCT;
END_TYPE

(*GOV CA RPM*)

TYPE
	PgsGovCaRpmParType : 	STRUCT 
		Enable : BOOL;
		Ref : REAL;
		RefMax : REAL;
		RefMin : REAL;
		dRefOn : REAL; (*Ratio of Ref variation in p.u/seconds*)
		dRefOff : REAL; (*Ratio of Ref variation in p.u/seconds*)
		Kdp : REAL;
		PosMax : REAL;
		PID : PgsPidParType;
	END_STRUCT;
	PgsGovCaRpmPrivType : 	STRUCT 
		ramp : PgsRampType;
		pid : PgsPidType;
		reset_pid : BOOL;
	END_STRUCT;
END_TYPE

(*GOV CA HZ*)

TYPE
	PgsGovCaHzParType : 	STRUCT 
		Enable : BOOL;
		UmOn : REAL; (*Voltage to enable Control*)
		Ref : REAL;
		RefMax : REAL;
		RefMin : REAL;
		dRefOn : REAL; (*Ratio of Ref variation in p.u/seconds*)
		dRefOff : REAL; (*Ratio of Ref variation in p.u/seconds*)
		Kdp : REAL;
		PosMax : REAL;
		PID : PgsPidParType;
	END_STRUCT;
	PgsGovCaHzPrivType : 	STRUCT 
		ramp : PgsRampType;
		pid : PgsPidType;
		reset_pid : BOOL;
	END_STRUCT;
END_TYPE

(*GOV CA PWR*)

TYPE
	PgsGovCaPwrParType : 	STRUCT 
		Enable : BOOL;
		UmOn : REAL; (*Voltage to enable Control*)
		Ref : REAL;
		RefMax : REAL;
		RefMin : REAL;
		RefOpen : REAL;
		dRefOn : REAL; (*Ratio of Ref variation in p.u/seconds*)
		dRefOff : REAL; (*Ratio of Ref variation in p.u/seconds*)
		PID : PgsPidParType;
		L2max : REAL;
		L2min : REAL;
		Kdp : REAL;
		PosMax : REAL;
		PIDHz : PgsPidParType;
	END_STRUCT;
	PgsGovCaPwrPrivType : 	STRUCT 
		ramp : PgsRampType;
		pid : PgsPidType;
		pidhz : PgsPidType;
	END_STRUCT;
END_TYPE

(*GOV Protection*)

TYPE
	PgsGovProtParType : 	STRUCT 
		OverRotation : PgsGovProtRotParType;
		Creep : PgsGovProtCreepParType;
		Feedback : PgsGovProtFeedbackParType;
	END_STRUCT;
	PgsGovProtPrivType : 	STRUCT 
		OverRotation : PgsGovProtRotPrivType;
		Creep : PgsGovProtCreepPrivType;
		Feedback : PgsGovProtFeedbackPrivType;
		ResetAlarm : BOOL;
	END_STRUCT;
END_TYPE

(*GOV Rotation Protection*)

TYPE
	PgsGovProtRotParType : 	STRUCT 
		Level1 : REAL;
		Time1 : REAL;
		Level2 : REAL;
		Time2 : REAL;
	END_STRUCT;
	PgsGovProtRotPrivType : 	STRUCT 
		time1 : REAL;
		time2 : REAL;
	END_STRUCT;
END_TYPE

(*GOV Creep  Protection*)

TYPE
	PgsGovProtCreepParType : 	STRUCT 
		Enable : BOOL;
		TEnable : REAL;
		Rpm : REAL;
		Time : REAL;
	END_STRUCT;
	PgsGovProtCreepPrivType : 	STRUCT 
		time1 : REAL;
		time2 : REAL;
	END_STRUCT;
END_TYPE

(*GOV Feedback  Protection*)

TYPE
	PgsGovProtFeedbackParType : 	STRUCT 
		Enable : BOOL;
		Pos : REAL;
		Rpm : REAL;
		Time : REAL;
	END_STRUCT;
	PgsGovProtFeedbackPrivType : 	STRUCT 
		time : REAL;
	END_STRUCT;
END_TYPE

(*GOV Digital Inputs*)

TYPE
	PgsGovDigInputsType : 	STRUCT 
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

(*GOV SetPoints*)

TYPE
	PgsGovSetPointsType : 	STRUCT 
		SetPos : REAL;
		fastSetPos : REAL;
		SetRpm : REAL;
		fastSetRpm : REAL;
		SetHz : REAL;
		fastSetHz : REAL;
		SetPwr : REAL;
		fastSetPwr : REAL;
	END_STRUCT;
END_TYPE

(*GOV DigOutputs Types:*)

TYPE
	PgsGovDigOutpusType : 	STRUCT 
		Status : PgsGovDigOutpusStatusType;
		Alarm : PgsGovDigOutpusAlarmType;
		Trip : PgsGovDigOutpusTripType;
	END_STRUCT;
	PgsGovDigOutpusStatusType : 	STRUCT 
		Enable : BOOL;
		RotationOk : BOOL;
		Unloaded : BOOL;
		Stopped : BOOL;
		RotationBrake : BOOL;
	END_STRUCT;
	PgsGovDigOutpusAlarmType : 	STRUCT 
		LimiterL2max : BOOL;
		LimiterL2min : BOOL;
		OverRotation : BOOL;
		Feedback : BOOL;
	END_STRUCT;
	PgsGovDigOutpusTripType : 	STRUCT 
		Trip : BOOL;
		MeterIdent : BOOL;
		CtrlDisabled : BOOL;
		Start1Fault : BOOL;
		Start2Fault : BOOL;
		StopFault : BOOL;
		OverRotation : BOOL;
		Creep : BOOL;
		Feedback : BOOL;
	END_STRUCT;
END_TYPE

(*GOV Enum Type*)

TYPE
	PgsGovModeType : 
		(
		PGS_GOV_MD_DISABLE,
		PGS_GOV_MD_AUTO,
		PGS_GOV_MD_MANUAL
		);
	PgsGovCtrlManualType : 
		(
		PGS_GOV_CM_OFF,
		PGS_GOV_CM_POS
		);
	PgsGovCtrlAutoType : 
		(
		PGS_GOV_CA_OFF,
		PGS_GOV_CA_RPM_0,
		PGS_GOV_CA_RPM_1,
		PGS_GOV_CA_HZ_0,
		PGS_GOV_CA_HZ_1,
		PGS_GOV_CA_PWR
		);
	PgsGovStatusType : 
		(
		PGS_GOV_ST_STOPPED,
		PGS_GOV_ST_TRIP,
		PGS_GOV_ST_MANUAL,
		PGS_GOV_ST_AUTO,
		PGS_GOV_ST_STARTING,
		PGS_GOV_ST_STOPPING,
		PGS_GOV_ST_UPLOADING,
		PGS_GOV_ST_DOWNLOADING
		);
END_TYPE
