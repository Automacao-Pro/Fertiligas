
(* TODO: Add your comment here *)
FUNCTION_BLOCK PgsCabo
	curto 	:= IN >= 20.0;
	aberto	:= IN <= 3.0;
	ton_aberto(IN:=aberto,PT:=PT);
	ton_curto(IN:=curto,PT:=PT);
	Falha 		:= aberto OR curto;
	Cabo_Aberto	:= ton_aberto.Q;
	Cabo_Curto	:= ton_curto.Q;
END_FUNCTION_BLOCK
