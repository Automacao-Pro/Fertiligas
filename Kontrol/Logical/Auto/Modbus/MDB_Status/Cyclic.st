PROGRAM _CYCLIC
//********************************//
//** Coil register              **//
//** Fun��o 01                  **//
//** Endere�o 22000             **//
//** Tipo BOOL                  **//
//********************************//

//-------------------------------------------------------------------------------------------
//-- Trocar a vari�vel "Var_cmd" por uma vari�vel da automa��o ------------------------------
//-- Repetir a linha para todos os status, incrementando o n�mero "001" a cada linha --------
//-------------------------------------------------------------------------------------------

	MDB_Status[001]   := Var_cmd;
		
//-------------------------------------------------------------------------------------------

END_PROGRAM
