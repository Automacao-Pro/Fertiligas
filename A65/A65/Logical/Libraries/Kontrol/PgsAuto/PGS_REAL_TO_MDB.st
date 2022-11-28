
(* TODO: Add your comment here *)
FUNCTION PGS_REAL_TO_MDB
	varUint1 ACCESS ADR(IN);
    varUint[0] := varUint1[1];
    varUint[1] := varUint1[0];
    pVar ACCESS ADR(varUint);
    PGS_REAL_TO_MDB := pVar;
END_FUNCTION
