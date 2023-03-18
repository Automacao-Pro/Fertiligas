(* TODO: Add your comment here *)
FUNCTION_BLOCK PgsEscalaTotal
	
	Sensor	:= (Entrada / 32767.0) * 16.0 + 4.0;
	IF (SensorMax - SensorMin) <> 0 THEN
		Valor   := ((Sensor - SensorMin) / (SensorMax - SensorMin)) 
				* (ValorMax - ValorMin)
				+  ValorMin;
	ELSE
		Valor   := 0.0;
	END_IF;
	
END_FUNCTION_BLOCK
