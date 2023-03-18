
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
	
	ton_reset_Tcp(IN:= A65.di.reset, PT:= T#30s);
	IF ton_reset_Tcp.Q THEN
		mbusTcpUpdate.reset := TRUE;
	END_IF;
    
END_PROGRAM
