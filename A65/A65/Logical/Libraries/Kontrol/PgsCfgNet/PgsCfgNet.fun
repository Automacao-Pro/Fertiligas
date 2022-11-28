
{REDUND_ERROR} FUNCTION_BLOCK PgsCfgNet (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		enable : {REDUND_UNREPLICABLE} BOOL;
		get : {REDUND_UNREPLICABLE} BOOL;
		set : {REDUND_UNREPLICABLE} BOOL;
	END_VAR
	VAR_INPUT RETAIN
		parameter : {REDUND_UNREPLICABLE} PgsCfgNetPar;
	END_VAR
	VAR_OUTPUT
		NtpRunning : BOOL;
		NtpSync : BOOL;
	END_VAR
	VAR
		i_tmp : UDINT;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION PgsCfgNetRegister : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		tagIdent : UDINT;
		cfgNet : PgsCfgNet;
	END_VAR
END_FUNCTION
