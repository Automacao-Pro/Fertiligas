
TYPE
	PgsAO4622PrivType : 	STRUCT 
		update : BOOL;
		step : USINT;
		write_io : AsIOAccWrite;
	END_STRUCT;
	PgsAO4622UpdatePrivType : 	STRUCT 
		init : BOOL := TRUE;
		step : USINT;
		read_io : AsIOAccRead;
		error : BOOL;
		time : REAL;
		cycle_time : UDINT;
		cycle_dt : REAL;
	END_STRUCT;
	PgsAO4622ChannelType : 
		(
		PGS_AO4622_B10_V,
		PGS_AO4622_0_20_mA,
		PGS_AO4622_4_20_mA
		);
END_TYPE
