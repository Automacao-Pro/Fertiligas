
FUNCTION_BLOCK PgsProtPhaseFault (*Phase fault detect.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Enable : BOOL;
		Parameter : PgsProtPhaseFaultParType := (level:=30);
		Ph1 : REAL;
		Ph2 : REAL;
		Ph3 : REAL;
	END_VAR
	VAR_OUTPUT
		Phm : REAL;
		Fault1 : BOOL;
		Fault2 : BOOL;
		Fault3 : BOOL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsProt40 (*Loss of Field Protection - 40*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Enable : BOOL;
		Parameter : PgsProt40ParType;
		Zmodule : REAL;
		Zangle : REAL;
	END_VAR
	VAR_OUTPUT
		O40Z : BOOL;
		O40ZT : BOOL;
	END_VAR
	VAR
		priv : PgsProt40PrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsProt51V (*Voltage-Restrained Time-Overcurrent Protection - 51V*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Enable : BOOL;
		Parameter : PgsProt51VParType;
		I : REAL; (*Current *)
		V : REAL; (*Voltage*)
	END_VAR
	VAR_OUTPUT
		O51V : BOOL;
		O51VT : BOOL;
		O51VR : BOOL;
	END_VAR
	VAR
		priv : PgsProt51VPrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsProt24 (*V/Hz Protection - 24*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Enable : BOOL;
		Parameter : PgsProt24ParType;
		V : REAL;
		Hz : REAL;
	END_VAR
	VAR_OUTPUT
		O24 : BOOL;
		O24T : BOOL;
	END_VAR
	VAR
		priv : PgsProt24PrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsProtSeq0 (*Calculate Zero Sequence Element*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		PhaseA : REAL;
		AngleA : REAL;
		PhaseB : REAL;
		AngleB : REAL;
		PhaseC : REAL;
		AngleC : REAL;
	END_VAR
	VAR_OUTPUT
		Phase0 : REAL;
		Angle0 : REAL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsProtSeq1 (*Calculate Positive Sequence Element*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ClockWise : BOOL;
		PhaseA : REAL;
		AngleA : REAL;
		PhaseB : REAL;
		AngleB : REAL;
		PhaseC : REAL;
		AngleC : REAL;
	END_VAR
	VAR_OUTPUT
		Phase1 : REAL;
		Angle1 : REAL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsProtSeq2 (*Calculate Negative Sequence Element*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ClockWise : BOOL;
		PhaseA : REAL;
		AngleA : REAL;
		PhaseB : REAL;
		AngleB : REAL;
		PhaseC : REAL;
		AngleC : REAL;
	END_VAR
	VAR_OUTPUT
		Phase2 : REAL;
		Angle2 : REAL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsProt62 (*Fix Time Protection - 62*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Enable : BOOL;
		Parameter : PgsProt62ParType;
		In : REAL;
	END_VAR
	VAR_OUTPUT
		O62 : BOOL;
		O62T : BOOL;
	END_VAR
	VAR
		priv : PgsProt62PrivType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsProgLatch (*Latch Output*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		In : BOOL;
		Reset : BOOL;
	END_VAR
	VAR_OUTPUT RETAIN
		Out : BOOL;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsProt50BF (*Breaker Failure Logic*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Enable : BOOL;
		Trip : BOOL;
		Parameter : PgsProt50BFParType;
		I1 : REAL;
		I2 : REAL;
		Closed : BOOL;
	END_VAR
	VAR_OUTPUT
		O50BFT : BOOL;
	END_VAR
	VAR
		priv : PgsProt50BFPrivType;
	END_VAR
END_FUNCTION_BLOCK
