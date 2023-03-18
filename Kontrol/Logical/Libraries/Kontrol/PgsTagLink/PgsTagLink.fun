
{REDUND_ERROR} FUNCTION PgsTagRegisterAVR : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		tagIdent : UDINT;
		name : UDINT;
		avr : PgsAVR;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterGOV : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		tagIdent : UDINT;
		name : UDINT;
		gov : PgsGOV;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterPOS : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		tagIdent : UDINT;
		name : UDINT;
		pos : PgsPOS;
	END_VAR
END_FUNCTION

{REDUND_ERROR} FUNCTION PgsTagRegisterCurve : BOOL (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		tagIdent : UDINT;
		name : UDINT;
		curve : PgsCurve;
	END_VAR
END_FUNCTION
