
FUNCTION_BLOCK PgsMbDataOpen (*Modbus Data Function Block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Devices : USINT;
	END_VAR
	VAR_OUTPUT
		dtaIdent : UDINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbDataClose (*Close Modbus Data Function Block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		dtaIdent : UDINT;
	END_VAR
	VAR_OUTPUT
		Status : USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbDevice (*Open a New Modbus Device*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		dtaIdent : UDINT;
		id : USINT;
		HoldingBlocks : USINT;
		InputBlocks : USINT;
		CoilBlocks : USINT;
		DiscreteBlocks : USINT;
		Links : USINT;
	END_VAR
	VAR_OUTPUT
		devIdent : UDINT;
		Status : USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbSetBlock (*Set a Memory block on Modbus Stack*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		devIdent : UDINT;
		BlockType : PgsMbBlkType;
		Address : UINT;
		pBlock : UDINT;
		blockLen : UDINT;
	END_VAR
	VAR_OUTPUT
		Status : USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbSetLink (*Link modbus with a function block*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		devIdent : UDINT;
		lnkIdent : UDINT;
	END_VAR
	VAR_OUTPUT
		Status : USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbSetInfo (*Set Information about the device.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		devIdent : UDINT;
		SlaveId : USINT;
		isRunning : BOOL;
		pInfo : UDINT;
		infoLen : UDINT;
	END_VAR
	VAR_OUTPUT
		Status : USINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbLinkAvrOpen (*AVR Communication Link.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		AvrIdent : UDINT;
		CoilAddress : UINT;
		HoldingAddress : UINT;
		InputAddress : UINT;
		Float : BOOL;
		ModiconFormat : BOOL;
		GainUm : REAL;
		GainIm : REAL;
		GainSm : REAL;
		GainUf : REAL;
		GainIf : REAL;
	END_VAR
	VAR_OUTPUT
		Ident : UDINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbLinkGovOpen (*GOV Communication Link.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		GovIdent : UDINT;
		CoilAddress : UINT;
		HoldingAddress : UINT;
		InputAddress : UINT;
		Float : BOOL;
		ModiconFormat : BOOL;
		GainUm : REAL;
		GainSm : REAL;
	END_VAR
	VAR_OUTPUT
		Ident : UDINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbLinkPosOpen (*POS Communication Link.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		PosIdent : UDINT;
		CoilAddress : UINT;
		HoldingAddress : UINT;
		InputAddress : UINT;
		Float : BOOL;
		ModiconFormat : BOOL;
	END_VAR
	VAR_OUTPUT
		Ident : UDINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbLinkCurveOpen (*Curve Communication Link.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		CurveIdent : UDINT;
		HoldingAddress : UINT;
		InputAddress : UINT;
		Float : BOOL;
		ModiconFormat : BOOL;
	END_VAR
	VAR_OUTPUT
		Ident : UDINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbLinkRealOpen (*Real Vector Communication Link*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Address : UINT;
		pBlock : UDINT;
		blockLen : UDINT;
		Holding : BOOL;
		Float : BOOL;
		ModiconFormat : BOOL;
		Gain : REAL; (*Gain to Integer*)
		NewValue : BOOL;
	END_VAR
	VAR_OUTPUT
		Ident : UDINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK PgsMbLinkClose (*Close Communication Link.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		lnkIdent : UDINT;
	END_VAR
	VAR_OUTPUT
		Status : USINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsMbTcpOpen (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		dtaIdent : UDINT;
		port : UINT;
	END_VAR
	VAR_OUTPUT
		ident : UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsMbTcpUpdate (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : {REDUND_UNREPLICABLE} BOOL;
		ident : UDINT;
		timeout : REAL;
		reset : BOOL;
		next : BOOL;
		close : BOOL;
	END_VAR
	VAR_OUTPUT
		clients : UDINT;
		selected : UDINT;
		ip : STRING[15];
		status : PgsMbStatus;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsMbTcpClose (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : {REDUND_UNREPLICABLE} BOOL;
		ident : {REDUND_UNREPLICABLE} UDINT;
	END_VAR
	VAR_OUTPUT
		status : PgsMbStatus;
	END_VAR
END_FUNCTION_BLOCK
