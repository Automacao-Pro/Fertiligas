PROGRAM _CYCLIC
//********************************//
//** Holding register           **//
//** Fun��o 03                  **//
//** Endere�o 21000             **//
//** Tipo REAL com SWAP de word **//
//********************************//
	
//-------------------------------------------------------------------------------------------
//-- Trocar a vari�vel "Var_par" por uma vari�vel da automa��o ------------------------------
//-- Repetir a linha para todos os par�metros, incrementando o n�mero "001" a cada linha ----
//-- � necess�rio fazer em duas partes, uma recebe o par�metro e a outra informa ------------
//-------------------------------------------------------------------------------------------

	IF link_mdb_parametros.NewValue THEN
		link_mdb_parametros.NewValue    := FALSE;

		Var_par	:= MDB_Parametros[001];
	ELSE
		MDB_Parametros[001] := Var_par;
	END_IF;
//-------------------------------------------------------------------------------------------
	 
END_PROGRAM