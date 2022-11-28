
(* TODO: Add your comment here *)
FUNCTION_BLOCK PgsEscala
	
	Sensor	:= (Entrada / 32767.0) * 16.0 + 4.0;
	filtro(	IN:=((Sensor - 4.0) / 16.0) 
				* (SensorMax - SensorMin)
				+  SensorMin,
			CTE:= 1);
	Valor   := filtro.OUT;
	
END_FUNCTION_BLOCK
