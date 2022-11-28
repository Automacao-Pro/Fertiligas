
(*<$Description$> TODO: Add your comment here </$Description$>*)
FUNCTION_BLOCK PgsSobre

	(* Alarme *)
	IF IN_AL = 0 THEN
		Alarme	:= FALSE;
	ELSE	  
		ton_al( IN := IN >= IN_AL , PT := REAL_TO_TIME( PT_AL * 1000) );
		IF ton_al.Q AND enable THEN
			Alarme	:= TRUE;
		ELSIF RST THEN
			Alarme	:= FALSE;
		END_IF;
	END_IF;
		
	(*Trip*)
	IF IN_TP = 0 THEN
		Trip	:= FALSE;
	ELSE	  
		ton_tp( IN := IN >= IN_TP , PT := REAL_TO_TIME( PT_TP * 1000) );
		IF ton_tp.Q AND enable THEN
			Trip	:= TRUE;
		ELSIF RST THEN
			Trip	:= FALSE;
		END_IF;
	END_IF;
	
END_FUNCTION_BLOCK
