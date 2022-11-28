PROGRAM _CYCLIC
//********************************//
//** Holding register           **//
//** Função 03                  **//
//** Endereço 21000             **//
//** Tipo REAL com SWAP de word **//
//********************************//
	
//-------------------------------------------------------------------------------------------
//-- Trocar a variável "Var_par" por uma variável da automação ------------------------------
//-- Repetir a linha para todos os parâmetros, incrementando o número "001" a cada linha ----
//-- É necessário fazer em duas partes, uma recebe o parâmetro e a outra informa ------------
//-------------------------------------------------------------------------------------------

	IF link_mdb_parametros.NewValue THEN
		link_mdb_parametros.NewValue    := FALSE;

		Var_par	:= MDB_Parametros[001];
	ELSE
		MDB_Parametros[001] := Var_par;
	END_IF;
//-------------------------------------------------------------------------------------------
	 
END_PROGRAM