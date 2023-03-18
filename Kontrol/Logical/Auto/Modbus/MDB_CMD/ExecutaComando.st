
(* TODO: Add your comment here *)
FUNCTION ExecutaComando
    IF in THEN
        in  := FALSE;
        out := TRUE;
    END_IF;
    ExecutaComando := TRUE;
END_FUNCTION
