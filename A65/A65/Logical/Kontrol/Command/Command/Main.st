
PROGRAM _INIT
    step := 0;
    	 
END_PROGRAM

PROGRAM _CYCLIC
    CASE step OF
        0:
            IF add OR remove OR clear THEN
                step := 10;
            END_IF;
        10:
            CmdOpen(
                enable      := TRUE,
                evtIdent    := Event
            );
            IF CmdOpen.status <> PGS_EVT_ST_RUNNING THEN
                IF add          THEN step := 20;
                ELSIF remove    THEN step := 30; 
                ELSIF clear     THEN step := 40;
                END_IF;
            END_IF;
        20:
            PgsEvtCmdInsert(CmdOpen.ident, ADR(group), ADR(tag));
            step := 50;
        30:
            PgsEvtCmdRemove(CmdOpen.ident, ADR(tag));
            step := 50;
        40:
            PgsEvtCmdClear(CmdOpen.ident);
            step := 50;
        50:
            CmdClose(
                enable      := TRUE,
                ident       := CmdOpen.ident
            );
            IF CmdClose.status <> PGS_EVT_ST_RUNNING THEN
                add     := FALSE;
                remove  := FALSE;
                clear   := FALSE;
                step    := 0;
            END_IF;
    END_CASE;
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

