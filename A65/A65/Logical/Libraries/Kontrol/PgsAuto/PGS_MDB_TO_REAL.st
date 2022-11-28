
(* TODO: Add your comment here *)
FUNCTION PGS_MDB_TO_REAL
    varUint1 ACCESS ADR(IN);
    varUint[0] := varUint1[1];
    varUint[1] := varUint1[0];
    pVar ACCESS ADR(varUint);
    PGS_MDB_TO_REAL := pVar;
END_FUNCTION
