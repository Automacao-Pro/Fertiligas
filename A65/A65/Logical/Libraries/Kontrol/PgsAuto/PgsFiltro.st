
(* TODO: Add your comment here *)
FUNCTION_BLOCK PgsFiltro
	acc	:= acc + IN - OUT;
	OUT	:= acc / CTE;
END_FUNCTION_BLOCK
