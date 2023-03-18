
{REDUND_ERROR} FUNCTION_BLOCK PgsFsLink (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
	END_VAR
	VAR_OUTPUT
		status : UDINT;
		device : PgsFsStatus;
	END_VAR
	VAR
		i_tmp : UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsFsOpen (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		DirName : UDINT;
		FileName : UDINT;
	END_VAR
	VAR_OUTPUT
		status : PgsFsStatus;
		ident : UDINT;
		filelen : UDINT;
		device : UDINT;
	END_VAR
	VAR
		i_tmp : UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsFsReadData (*Read Data from file to memory*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL; (*This function block is only executed if enable <> 0.*)
		DirName : UDINT;
		FileName : UDINT;
	END_VAR
	VAR_OUTPUT
		status : PgsFsStatus;
		dataIdent : UDINT;
	END_VAR
	VAR
		i_tmp : UDINT;
		i_error : USINT;
		i_step : USINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsFsWriteData (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		DirName : UDINT;
		FileName : UDINT;
		data : UDINT;
		dataSize : UDINT;
	END_VAR
	VAR_OUTPUT
		status : PgsFsStatus;
	END_VAR
	VAR
		i_tmp : UDINT;
		i_error : USINT;
		i_step : USINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsFsGetDataInfo (*Returns the pointer to the memory area readed from file and its size.*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL; (*This function block is only executed if enable <> 0.*)
		dataIdent : UDINT;
	END_VAR
	VAR_OUTPUT
		status : PgsFsStatus;
		data : UDINT; (*Pointer to the created data*)
		dataSize : UDINT; (*Size of the created data*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK PgsFsCloseData (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : BOOL;
		dataIdent : UDINT;
	END_VAR
	VAR_OUTPUT
		status : PgsFsStatus;
	END_VAR
END_FUNCTION_BLOCK
