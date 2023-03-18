
FUNCTION_BLOCK PgsHorimetro
	
	priv.init_ton(IN:= priv.init, PT:=T#10s);
	IF priv.init_ton.Q THEN
		priv.init := FALSE;
		total := set_total;
	END_IF;
	
	RTC_gettime(ADR(priv.rtc_time));
	IF reset THEN
		reset 	:= FALSE;
		total 	:= 0.0;
	END_IF;
	
	IF enable AND priv.sec_old <> priv.rtc_time.second THEN
		total := total + 1.0 / 3600.0;
	END_IF;
	priv.sec_old := priv.rtc_time.second;

	IF set_inicial THEN
		set_inicial := FALSE;
		total := set_total;
	END_IF;
	
	horas	:= TRUNC(total);
	minutos	:= TRUNC((total - horas)*60.0);
	segundos:= TRUNC((total - horas - minutos/60.0)*3600.0);

	priv.bkp_ton(IN:= NOT priv.bkp_ton.Q, PT:=T#10m);
	IF priv.bkp_ton.Q THEN
		set_total := total;
	END_IF;
END_FUNCTION_BLOCK