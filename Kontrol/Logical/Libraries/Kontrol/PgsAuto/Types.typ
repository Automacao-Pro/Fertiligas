
TYPE
	PgsHorimetroPrivType : 	STRUCT 
		init : BOOL := TRUE;
		init_ton : TON;
		sec_old : USINT;
		rtc_time : RTCtime_typ;
		bkp_ton : TON;
	END_STRUCT;
	PgsManobraPrivType : 	STRUCT 
		init : BOOL := TRUE;
		init_ton : TON;
		bkp_ton : TON;
		m : BOOL;
	END_STRUCT;
	PgsEnergiaPrivType : 	STRUCT 
		init : BOOL := TRUE;
		init_ton : TON;
		dh : REAL; (*Delta Hour*)
		rt_info : RTInfo;
		bkp_ton : TON;
	END_STRUCT;
END_TYPE
