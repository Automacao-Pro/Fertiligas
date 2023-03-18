
{REDUND_ERROR} FUNCTION_BLOCK PgsTagOpen (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
	END_VAR
	VAR_OUTPUT
		status : PgsTagStatus;
		ident : UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsTagClose (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		ident : UDINT;
	END_VAR
	VAR_OUTPUT
		status : PgsTagStatus;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsTagUpdate (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		ident : UDINT;
		FileName : UDINT;
		read : BOOL;
		write : BOOL;
	END_VAR
	VAR_OUTPUT
		status : PgsTagStatus;
	END_VAR
	VAR
		i_tmp : UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION PgsTagStartNode : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		node : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagEnterNode : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		node : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagEndNode : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterBOOL : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : BOOL;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterSINT : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : SINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterINT : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : INT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterDINT : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : DINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterUSINT : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : USINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterUINT : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : UINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterUDINT : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterREAL : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : REAL;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterLREAL : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL := FALSE;
		tag : UDINT;
	END_VAR
	VAR_IN_OUT
		value : LREAL;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterENUM : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		save : BOOL;
		tag : UDINT;
		value : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagSetInfo : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		tag : UDINT;
		info : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagValid : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagGetVar : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ident : UDINT;
		tag : UDINT;
		var_info : UDINT;
	END_VAR
END_FUNCTION
