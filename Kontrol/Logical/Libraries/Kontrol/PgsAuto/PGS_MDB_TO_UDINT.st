
(* TODO: Add your comment here *)
FUNCTION PGS_MDB_TO_UDINT
    varUint[0] := HIGH;
    varUint[1] := LOW;
    pVar ACCESS ADR(varUint);
    PGS_MDB_TO_UDINT := pVar;	
END_FUNCTION
