(*POS Parameters*)

TYPE
	PgsPosParType : 	STRUCT 
		Enable : BOOL;
		Base : REAL; (*Base for 1 pu of POS in %*)
		DeadBand : REAL;
		RampUp : PgsPosRampParType; (*Parameters of the setpoint of rising ramp.*)
		RampDown : PgsPosRampParType; (*Parameters of the setpoint of falling ramp.*)
		HCC : PgsPosHccParType; (*Parameters of the Hydraulic Cylinder Compensation*)
		Alarm : PgsPosProtParType;
		Trip : PgsPosProtParType;
		PID : PgsPidParType; (*Parameters of the PID*)
	END_STRUCT;
	PgsPosPrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_dt : REAL;
		oldMode : PgsPosModeType;
		oldfastSetPoint : REAL;
		oldEnable : BOOL;
		pid : PgsPidType;
		ramp : PgsRampType;
		time_alarm : REAL;
		time_trip : REAL;
	END_STRUCT;
	PgsPosRampParType : 	STRUCT  (*Set Point Ramp Parameters*)
		dSp0 : REAL;
		SetPoint : REAL;
		dSp1 : REAL;
	END_STRUCT;
	PgsPosHccParType : 	STRUCT  (*Hydraulic Cylinder Compensation*)
		Kup : REAL;
		Kdown : REAL;
		dbHigh : REAL;
		dbLow : REAL;
	END_STRUCT;
	PgsPosSetPointType : 	STRUCT  (*SetPoints*)
		SetPoint : REAL;
		fastSetPoint : REAL;
		SetOut : REAL;
	END_STRUCT;
END_TYPE

(*Pos Protection*)

TYPE
	PgsPosProtParType : 	STRUCT 
		ePos : REAL;
		Time : REAL;
	END_STRUCT;
END_TYPE

(*POS Enum Types:*)

TYPE
	PgsPosModeType : 
		(
		PGS_POS_MD_DISABLE,
		PGS_POS_MD_AUTO,
		PGS_POS_MD_MANUAL,
		PGS_POS_MD_OUT
		);
END_TYPE
