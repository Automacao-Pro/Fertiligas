

PROGRAM _INIT
	(* Insert code here *)
    TagManager(enable:=TRUE);
	//Registro de Parametros
    PgsTagStartNode     (TagManager.ident, ADR('Auto'));
	
    PgsTagStartNode     (TagManager.ident, ADR('Parametro'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Var_par'),	Var_par);
    PgsTagEndNode       (TagManager.ident);//Parametro
    
	PgsTagStartNode     (TagManager.ident, ADR('Status'));
    PgsTagRegisterBOOL  (TagManager.ident, TRUE, ADR('Var_cmd'),	Var_cmd);
    PgsTagRegisterBOOL  (TagManager.ident, TRUE, ADR('dummy'),		dummy);
    PgsTagRegisterBOOL  (TagManager.ident, TRUE, ADR('dummy'),		dummy);
    PgsTagEndNode       (TagManager.ident);//Status  
    
	PgsTagEndNode       (TagManager.ident);//Auto
	 
END_PROGRAM