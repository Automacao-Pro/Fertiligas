
{REDUND_ERROR} FUNCTION_BLOCK PgsEvtCreate (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		tagIdent : UDINT;
	END_VAR
	VAR_OUTPUT
		ident : UDINT;
		status : PgsEvtStatus;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsEvtDelete (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		ident : UDINT;
	END_VAR
	VAR_OUTPUT
		status : PgsEvtStatus;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsEvtGroup (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		ident : UDINT;
		group : UDINT;
		pData : UDINT;
		dataSize : UDINT;
	END_VAR
	VAR_OUTPUT
		lost : BOOL;
		status : PgsEvtStatus;
	END_VAR
	VAR
		i_tmp : UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsEvtUpdate (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		ident : UDINT;
		file_sz : UDINT;
		max_sz : UDINT;
		time : REAL;
		read_config : BOOL;
		clear_history : BOOL;
	END_VAR
	VAR_OUTPUT
		status : PgsEvtStatus;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION PgsEvtGetTag : UDINT (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		id : UINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION_BLOCK PgsEvtCmdOpen (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : {REDUND_UNREPLICABLE} BOOL;
		evtIdent : {REDUND_UNREPLICABLE} UDINT;
	END_VAR
	VAR_OUTPUT
		status : {REDUND_UNREPLICABLE} PgsEvtStatus;
		ident : {REDUND_UNREPLICABLE} UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsEvtCmdClose (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : {REDUND_UNREPLICABLE} BOOL;
		ident : {REDUND_UNREPLICABLE} UDINT;
	END_VAR
	VAR_OUTPUT
		status : {REDUND_UNREPLICABLE} PgsEvtStatus;
	END_VAR
	VAR
		error : UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION PgsEvtCmdInsert : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		group : UDINT;
		tag : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsEvtCmdRemove : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		tag : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsEvtCmdClear : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
	END_VAR
END_FUNCTION
