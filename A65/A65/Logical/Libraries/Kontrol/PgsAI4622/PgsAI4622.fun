
{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK PgsAI4622Update (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		Ident : {REDUND_UNREPLICABLE} UDINT;
	END_VAR
	VAR_OUTPUT
		Stauts : {REDUND_UNREPLICABLE} UINT;
	END_VAR
	VAR
		priv : {REDUND_UNREPLICABLE} PgsAI4622UpdatePrivType;
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK PgsAI4622 (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		pDeviceName : {REDUND_UNREPLICABLE} UDINT;
		FilterLevel : {REDUND_UNREPLICABLE} PgsAI4622FilterType;
		RampLimit : {REDUND_UNREPLICABLE} PgsAI4622RampType;
		UpperLimit : {REDUND_UNREPLICABLE} INT;
		LowerLimit : {REDUND_UNREPLICABLE} INT;
		Channel1 : {REDUND_UNREPLICABLE} PgsAI4622ChannelType;
		Channel2 : {REDUND_UNREPLICABLE} PgsAI4622ChannelType;
		Channel3 : {REDUND_UNREPLICABLE} PgsAI4622ChannelType;
		Channel4 : {REDUND_UNREPLICABLE} PgsAI4622ChannelType;
	END_VAR
	VAR_OUTPUT
		Ident : {REDUND_UNREPLICABLE} UDINT;
	END_VAR
	VAR
		priv : {REDUND_UNREPLICABLE} PgsAI4622PrivType;
	END_VAR
END_FUNCTION_BLOCK
