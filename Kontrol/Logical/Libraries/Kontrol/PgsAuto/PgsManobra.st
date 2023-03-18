
FUNCTION_BLOCK PgsManobra
	priv.init_ton(IN:= priv.init, PT:=T#10s);
	IF priv.init_ton.Q THEN
		priv.init := FALSE;
		total := set_total;
	END_IF;

    IF reset THEN
    	reset	:= FALSE;
        total	:= 0;
    END_IF;
	
	IF set_inicial THEN
		set_inicial	:= FALSE;
		total	:= set_total;
	END_IF;
	
    IF NOT priv.m AND enable THEN total := total + 1.0; END_IF;
    priv.m := enable;
	
	priv.bkp_ton(IN:= NOT priv.bkp_ton.Q, PT:=T#1m);
	IF priv.bkp_ton.Q THEN
		set_total := total;
	END_IF;
END_FUNCTION_BLOCK
