
(*<$Description$> TODO: Add your comment here </$Description$>*)
FUNCTION_BLOCK PgsX20AT
	IN1_Aberto		:= Status.0;
	IN1_Curto		:= (Status.1 = 1) AND (Status.0 = 0);

	IN2_Aberto		:= Status.2;
	IN2_Curto		:= (Status.3 = 1) AND (Status.2 = 0);

	IN3_Aberto		:= Status.4;
	IN3_Curto		:= (Status.5 = 1) AND (Status.4 = 0);

	IN4_Aberto		:= Status.6;
	IN4_Curto		:= (Status.7 = 1) AND (Status.6 = 0);

END_FUNCTION_BLOCK
