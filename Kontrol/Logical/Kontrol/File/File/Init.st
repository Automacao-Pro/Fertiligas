

PROGRAM _INIT
    TagManager(enable:=TRUE);

    TagUpdate.enable    := TRUE;
    TagUpdate.ident     := TagManager.ident;
    TagUpdate.FileName  := ADR('tags.xml');    	    
END_PROGRAM