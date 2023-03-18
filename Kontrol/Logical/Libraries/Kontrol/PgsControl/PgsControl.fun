
FUNCTION PgsConvertPF : REAL (*Convert PF from -0.001...1..+0.001 to -1.000...0...+1.000*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		input : REAL;
	END_VAR
END_FUNCTION

FUNCTION_BLOCK PgsLicense (*Verify if HW is valid*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_OUTPUT
		Valid : BOOL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMeter (*Per Unit Converter Block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Base : PgsBaseType;
		In : PgsAnalogType;
	END_VAR
	VAR_OUTPUT
		Ident : UDINT;
		Out : PgsAnalogType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsAVR (*Automatic Voltage Regulator Function Block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Parameter : PgsAvrParType;
		Update : BOOL := FALSE;
		MeterIdent : UDINT;
		DigInputs : PgsAvrDigInputsType;
		SetPoints : PgsAvrSetPointsType;
		CtrlOnline : PgsAvrCtrlAutoType;
	END_VAR
	VAR_OUTPUT
		Out : REAL;
		Mode : PgsAvrModeType;
		CtrlManual : PgsAvrCtrlManualType;
		CtrlAuto : PgsAvrCtrlAutoType;
		Status : PgsAvrStatusType := PGS_AVR_ST_OFF;
		DigOutputs : PgsAvrDigOutputsType;
		Ident : UDINT;
	END_VAR
	VAR
		priv : PgsAvrPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsGOV (*Speed Governor Function Block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Parameter : PgsGovParType;
		Update : BOOL;
		MeterIdent : UDINT;
		PosIdent : UDINT;
		DigInputs : PgsGovDigInputsType;
		SetPoints : PgsGovSetPointsType;
		PosIn : REAL; (*POS in pu*)
		CtrlOnline : {REDUND_UNREPLICABLE} PgsGovCtrlAutoType;
	END_VAR
	VAR_OUTPUT
		Out : REAL;
		Mode : PgsGovModeType;
		CtrlManual : PgsGovCtrlManualType;
		CtrlAuto : PgsGovCtrlAutoType;
		Status : PgsGovStatusType;
		DigOutputs : PgsGovDigOutpusType;
		Ident : UDINT;
	END_VAR
	VAR
		priv : PgsGovPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsPWR (*Speed Governor Function Block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Parameter : PgsPwrParType;
		Update : BOOL;
		MeterIdent : UDINT;
		DigInputs : PgsPwrDigInputsType;
		SetPoints : PgsPwrSetPointsType;
	END_VAR
	VAR_OUTPUT
		Out : REAL;
		Status : PgsPwrStatusType;
		DigOutputs : PgsPwrDigOutpusType;
		Ident : UDINT;
	END_VAR
	VAR
		priv : PgsPwrPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsPOS (*Position Controler Function Block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Enable : BOOL;
		Parameter : PgsPosParType; (*Block Parameters*)
		Update : BOOL; (*Update PID and Ramp constants*)
		Reset : BOOL;
		Auto : BOOL;
		Mode : PgsPosModeType; (*Operation Mode*)
		PosIn : REAL; (*POS in %*)
		SetPoints : PgsPosSetPointType; (*Reference Input*)
		In : REAL; (*Control Input in Auto Mode*)
		PosIdent : UDINT; (*POS Function Block Identifier*)
	END_VAR
	VAR_OUTPUT
		PosOut : REAL; (*POS in pu*)
		Out : REAL; (*Control Output*)
		invOut : REAL; (*Control Output Inverted*)
		Alarm : BOOL;
		Trip : BOOL;
		Ident : UDINT; (*Block Identifier Output*)
	END_VAR
	VAR
		priv : PgsPosPrivType; (*Internal variables*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsHydCyl (*Hydraulic Cylinder Model*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		In : REAL;
	END_VAR
	VAR_OUTPUT
		Out : REAL;
	END_VAR
	VAR
		dUpMax : REAL := 0.2; (*Max Up ratio*)
		dDownMax : REAL := 0.2; (*Max Down ratio*)
		dbH : REAL := 0.55; (*DeadBand High*)
		dbL : REAL := 0.45; (*DeadBand Low*)
		init : BOOL := TRUE;
		ramp : PgsRampType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsCurve (*Parameterizable transfer curve.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT RETAIN
		Curve : PgsCurveParType;
	END_VAR
	VAR_INPUT
		In : REAL;
	END_VAR
	VAR_OUTPUT
		Out : REAL;
		Ident : UDINT; (*Block Identifier Output*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsRPM (*Calculate RPM*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		MasterTime : DINT;
		MasterCount : DINT;
		ppr : INT; (*pulse per revolution*)
	END_VAR
	VAR_OUTPUT
		Output : REAL; (*RPM*)
		dOut : REAL; (*RPM/s*)
	END_VAR
	VAR
		LastTime : DINT;
		LastCount : DINT;
		cycle_dt : REAL;
		timer : REAL;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsHourMeter (*Hour Meter*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		reset : BOOL;
	END_VAR
	VAR_OUTPUT RETAIN
		hours : LREAL; (*Total Hour*)
	END_VAR
	VAR
		priv : PgsHourMeterPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION PgsHourMeter_set_hours : BOOL
	VAR_INPUT
		hour_meter : PgsHourMeter;
		hours : LREAL;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION_BLOCK PgsEnergy (*Energy Meter*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		reset : BOOL;
		power : REAL;
	END_VAR
	VAR_OUTPUT RETAIN
		posEnergy : LREAL;
		negEnergy : LREAL;
	END_VAR
	VAR
		priv : PgsEnergyPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION PgsEnergy_set_energy : BOOL
	VAR_INPUT
		energy : PgsEnergy;
		pos : LREAL;
		neg : LREAL;
	END_VAR
END_FUNCTION

FUNCTION_BLOCK PgsRamp
	VAR_INPUT
		enable : BOOL;
		reset : BOOL;
		dy : REAL;
		min : REAL;
		max : REAL;
		x : REAL;
	END_VAR
	VAR_OUTPUT
		reached : BOOL;
		y : REAL;
	END_VAR
	VAR
		priv : PgsRampType;
	END_VAR
END_FUNCTION_BLOCK
