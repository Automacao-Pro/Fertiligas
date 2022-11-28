
PROGRAM _CYCLIC

    IF NOT PgsTagValid(TagManager.ident) THEN 
        RETURN;
    END_IF
    
    mbusTcpUpdate   ( ident := mbusTcpOpen.ident );
    telnetUpdate( 
        ident       := telnetOpen.ident,
        tagIdent    := TagManager.ident,
        evtIdent    := Event 
    );
    
END_PROGRAM
