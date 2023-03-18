
(* TODO: Add your comment here *)
FUNCTION_BLOCK PgsEscala
	
	Sensor	:= (Entrada / 32767.0) * 16.0 + 4.0;
	
	IF Filtro < 1 THEN
		Filtro := 1;
	END_IF
	priv_filtro(IN:=Sensor, CTE:=Filtro);
	
	IF NOT priv_first_start THEN
		priv_first_start := TRUE;
		priv_filtro(IN:= (Sensor - (priv_filtro.acc / Filtro) ) * Filtro);
	END_IF;
	
	Valor   := ((priv_filtro.OUT - 4.0) / 16.0) 
	* (SensorMax - SensorMin)
	+  SensorMin;
	
END_FUNCTION_BLOCK
