
TYPE
	PgsA65 : 	STRUCT 
		di : PgsA65DI;
		do : PgsA65DO;
		ai : PgsA65AI;
		ao : PgsA65AO;
	END_STRUCT;
	PgsA65DI : 	STRUCT 
		remote : BOOL;
		reset : BOOL;
		gov_enable : BOOL;
		gov_ctrl_pwr_enable : BOOL;
		gov_trip : BOOL;
		gov_unload : BOOL;
		gov_up : BOOL;
		gov_down : BOOL;
		avr_enable : BOOL;
		avr_ctrl_qm_enable : BOOL;
		avr_ctrl_pf_enable : BOOL;
		avr_trip : BOOL;
		avr_unload : BOOL;
		avr_ref_up : BOOL;
		avr_ref_down : BOOL;
		sync_enable : BOOL;
		dead_bus_enable : BOOL;
		enable_pos1 : BOOL;
		enable_pos2 : BOOL;
		enable_pos3 : BOOL;
	END_STRUCT;
	PgsA65DO : 	STRUCT 
		gov_on : BOOL;
		gov_unload : BOOL;
		gov_over_rotation : BOOL;
		rotation_zero : BOOL;
		rotation_nominal : BOOL;
		rotation_brake : BOOL;
		power_zero : BOOL;
		rpm_fault : BOOL;
		avr_on : BOOL;
		online : BOOL;
		avr_force_crowbar : BOOL;
		avr_limiter_on : BOOL;
		field_flash_on : BOOL;
		voltage_nominal : BOOL;
		sync_enabled : BOOL;
		dead_bus_enabled : BOOL;
		watchdog : BOOL;
	END_STRUCT;
	PgsA65AI : 	STRUCT 
		if : INT;
		uf : INT;
		pos1 : INT;
		pos2 : INT;
		pos3 : INT;
	END_STRUCT;
	PgsA65AO : 	STRUCT 
		pwr : INT;
		pos1 : INT;
		pos2 : INT;
		pos3 : INT;
	END_STRUCT;
END_TYPE
