
(*<$Description$> TODO: Add your comment here </$Description$>*)
FUNCTION_BLOCK PgsEnergia

	priv.init_ton(IN:= priv.init, PT:=T#10s);
	IF priv.init_ton.Q THEN
		priv.init := FALSE;
		posEnergy := set_posEnergy;
		negEnergy := set_negEnergy;
	END_IF;
	
	priv.rt_info(enable := TRUE);
	priv.dh := UDINT_TO_REAL(priv.rt_info.cycle_time) / 3.6e9;
	
	IF enable THEN
		IF power > 0.0 THEN
			 posEnergy := posEnergy + power * priv.dh; 
		ELSE
			 negEnergy := negEnergy + power * priv.dh; 
		END_IF;
	END_IF;
	
	IF reset THEN
		reset := FALSE;
		posEnergy := 0.0;
		negEnergy := 0.0;
	END_IF;
	
	IF set_inicial THEN
		set_inicial := FALSE;
		posEnergy := set_posEnergy;
		negEnergy := set_negEnergy;
	END_IF;
	
	priv.bkp_ton(IN:= NOT priv.bkp_ton.Q, PT:=T#10m);
	IF priv.bkp_ton.Q THEN
		set_posEnergy := LREAL_TO_REAL(posEnergy);
		set_negEnergy := LREAL_TO_REAL(negEnergy);
	END_IF;
END_FUNCTION_BLOCK
