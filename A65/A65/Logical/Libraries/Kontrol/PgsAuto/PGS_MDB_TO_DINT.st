
(* TODO: Add your comment here *)
FUNCTION PGS_MDB_TO_DINT
    varUint[0] := HIGH;
    varUint[1] := LOW;
    pVar ACCESS ADR(varUint);
    PGS_MDB_TO_DINT := pVar;	
END_FUNCTION
