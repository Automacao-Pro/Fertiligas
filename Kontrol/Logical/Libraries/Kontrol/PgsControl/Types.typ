(*Curve Type*)

TYPE
	PgsCurveParType : 	STRUCT 
		in : ARRAY[0..9]OF REAL;
		out : ARRAY[0..9]OF REAL;
	END_STRUCT;
	PgsCurvePqParType : 	STRUCT 
		p : ARRAY[0..9]OF REAL;
		q : ARRAY[0..9]OF REAL;
	END_STRUCT;
END_TYPE

(*Meter Types*)

TYPE
	PgsBaseType : 	STRUCT 
		Sm : REAL; (*Nominal Power of Synchronous Machine in kVA*)
		Um : REAL; (*Nominal Voltage of Synchronous Machine in V*)
		Ub : REAL; (*Nominal Voltage of Bar in V*)
		Im : REAL; (*Nominal Current of Synchronous Machine in A*)
		Fm : REAL; (*Nominal Frequency of Synchronous Machine in Hz*)
		Rot : REAL; (*Nominal Rotation of Turbine in RPM*)
		Uf : REAL; (*Nominal Voltage of Field Excitation in V*)
		If : REAL; (*Nominal Current of Field Excitation in A*)
	END_STRUCT;
	PgsAnalogType : 	STRUCT 
		Um : REAL; (*Synchronous Machine Voltage in V or PU*)
		Ub : REAL; (*Bar Voltage in V or PU*)
		Im : REAL; (*Synchronous Machine Current in A or PU*)
		Uf : REAL; (*Field Voltage in V or PU*)
		If : REAL; (*Field Current in A or PU*)
		Fm : REAL; (*Synchronous Machine Frequency in Hz ou PU*)
		Rot : REAL; (*Turbine Rotation in RPM or PU*)
		Pm : REAL; (*Active Power in kW or PU*)
		Qm : REAL; (*Reactive Power in kW or PU*)
		Sm : REAL; (*Aparent Power in kW or PU*)
		PF : REAL; (*Power Factor (normal or linear)*)
	END_STRUCT;
END_TYPE

(*Pid Types*)

TYPE
	PgsPidType : 	STRUCT 
		SetValue : REAL;
		ActValue : REAL;
		Out : REAL;
		parameter : REFERENCE TO PgsPidParType;
		pid : LCRPID;
		pid_para : LCRPIDpara;
	END_STRUCT;
	PgsPidParType : 	STRUCT 
		Kp : REAL; (*Proportional Gain in p.u.*)
		Ti : REAL; (*Integral Time in s*)
		Td : REAL; (*Derivative Time in s*)
		Tf : REAL; (*Derivative Filter Time in s*)
		Kwd : REAL; (*Anti WinDup Gain in p.u.*)
		db : REAL; (*Dead band*)
		Update : BOOL; (*Update Constants*)
	END_STRUCT;
END_TYPE

(*Ramp Types*)

TYPE
	PgsRampType : 	STRUCT 
		x : REAL := 0;
		y : REAL := 0;
		x_reached : BOOL := FALSE;
		max_limit : BOOL := FALSE;
		min_limit : BOOL := FALSE;
		dy_up : REAL := 1.0;
		dy_down : REAL := 1.0;
		y_max : REAL := 10.0;
		y_min : REAL := -10.0;
		_cycle_time : UDINT;
		_dy_up : REAL;
		_dy_down : REAL;
	END_STRUCT;
END_TYPE

(*Hour Meter Types*)

TYPE
	PgsHourMeterPrivType : 	STRUCT 
		init : BOOL := TRUE;
		dh : REAL; (*Delta Hour*)
	END_STRUCT;
END_TYPE

(*Hour Meter Types*)

TYPE
	PgsEnergyPrivType : 	STRUCT 
		init : BOOL := TRUE;
		dh : REAL; (*Delta Hour*)
	END_STRUCT;
END_TYPE
