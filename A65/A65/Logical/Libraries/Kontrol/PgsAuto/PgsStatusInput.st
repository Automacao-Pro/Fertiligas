
(* TODO: Add your comment here *)
FUNCTION_BLOCK PgsStatusInput

IF Enable THEN

	CASE Pos OF
		1:	pos_0 := StatusInput.0;
			pos_1 := StatusInput.1;
		2:	pos_0 := StatusInput.2;
			pos_1 := StatusInput.3;
		3:	pos_0 := StatusInput.4;
			pos_1 := StatusInput.5;
		4:	pos_0 := StatusInput.6;
			pos_1 := StatusInput.7;
		ELSE
			pos_0 := TRUE;
			pos_1 := TRUE;
	END_CASE;
	
	IF pos_0 AND NOT pos_1  THEN
		Limite_Inferior := TRUE;
	ELSIF Reset THEN
		Limite_Inferior := FALSE;
	END_IF;
	IF NOT pos_0 AND pos_1  THEN
		Limite_Superior := TRUE;
	ELSIF Reset THEN
		Limite_Superior := FALSE;
	END_IF;
	IF pos_0 AND pos_1 THEN
		Circuito_Aberto := TRUE;
	ELSIF Reset THEN
		Circuito_Aberto := FALSE;
	END_IF;
ELSE
	Limite_Inferior := FALSE;
	Limite_Superior := FALSE;
	Circuito_Aberto := FALSE;
END_IF;

END_FUNCTION_BLOCK
