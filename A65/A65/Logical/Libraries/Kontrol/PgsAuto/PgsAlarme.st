
(*<$Description$> TODO: Add your comment here </$Description$>*)
FUNCTION_BLOCK PgsAlarme

	ton(IN:=IN,PT:=PT);
	IF ton.Q  THEN
		Q	:= TRUE;
	ELSIF RESET THEN
		Q	:= FALSE;
	END_IF;
	
END_FUNCTION_BLOCK
