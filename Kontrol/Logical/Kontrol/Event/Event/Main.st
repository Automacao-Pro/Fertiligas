
PROGRAM _INIT
    EventCreate.enable  := TRUE;        // Habilita o bloco que cria os eventos 
    EventUpdate.enable  := TRUE;        // Habilita o bloco que gerencia a gravação dos eventos
    EventUpdate.file_sz := 1000000;     // Tamanho máximo de cada arquivo em bytes
    EventUpdate.max_sz  := 1000000000;  // Tamanho máximo que será utilizado no disco em bytes
    EventUpdate.time    := 86400;       // Tempo que o Bloco verifica o tamanho ocupado em disco e apaga arquivos antigos se necessário.
    TagManager(enable:=TRUE);

    //Register Parameters
    PgsTagStartNode     (TagManager.ident, ADR('evt'));
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('read_config'),   EventUpdate.read_config);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('clear_history'), EventUpdate.clear_history);
    PgsTagRegisterUDINT (TagManager.ident, TRUE,  ADR('file_sz'),       EventUpdate.file_sz);
    PgsTagRegisterUDINT (TagManager.ident, TRUE,  ADR('max_sz'),        EventUpdate.max_sz);
    PgsTagRegisterREAL  (TagManager.ident, TRUE,  ADR('time'),          EventUpdate.time);
    //Test
    PgsTagRegisterREAL  (TagManager.ident, FALSE,  ADR('test'),         test);
    PgsTagEndNode       (TagManager.ident);//evt                
    test := 1;
END_PROGRAM

PROGRAM _CYCLIC
        EventCreate( tagIdent := TagManager.ident );
        EventCreate.enable := FALSE;
        EventUpdate( ident := EventCreate.ident );
        Event := EventCreate.ident;        
END_PROGRAM

PROGRAM _EXIT
    Event := 0;
    REPEAT
        EventDelete(
            enable  := TRUE,
            ident   := EventCreate.ident
        );
    UNTIL EventDelete.status <> PGS_EVT_ST_RUNNING
    END_REPEAT;
END_PROGRAM

