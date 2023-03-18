
TYPE
	Pgs0985PrivType : 	STRUCT 
		update : BOOL;
		step : USINT;
		write_io : AsIOAccWrite;
		cstep : USINT;
		cgstep : USINT;
		gen : UDINT;
		genpu : UDINT;
		genpf : UDINT;
		genpa : UDINT;
		genpc : UDINT;
		genpp : UDINT;
		do1 : UDINT;
		mai : UDINT;
		bus : UDINT;
		sync : UDINT;
	END_STRUCT;
	Pgs0985GenPrivType : 	STRUCT 
		step : USINT;
		v_tap : USINT;
		v_mult : UINT;
		i_tap : USINT;
		i_mult : UINT;
	END_STRUCT;
	Pgs0985BusPrivType : 	STRUCT 
		step : USINT;
		v_tap : USINT;
		v_mult : UINT;
	END_STRUCT;
	Pgs0985MainPrivType : 	STRUCT 
		step : USINT;
		v1_tap : USINT;
		v1_mult : UINT;
		v2_tap : USINT;
		v2_mult : UINT;
	END_STRUCT;
	Pgs0985SyncPrivType : 	STRUCT 
		step : USINT;
	END_STRUCT;
	Pgs0985GenPuPrivType : 	STRUCT 
		step : USINT;
	END_STRUCT;
	Pgs0985GenPfPrivType : 	STRUCT 
		step : USINT;
	END_STRUCT;
	Pgs0985GenPaPrivType : 	STRUCT 
		step : USINT;
	END_STRUCT;
	Pgs0985GenPcPrivType : 	STRUCT 
		step : USINT;
	END_STRUCT;
	Pgs0985GenPpPrivType : 	STRUCT 
		step : USINT;
	END_STRUCT;
	Pgs0985DO1PrivType : 	STRUCT 
		step : USINT;
		out57 : UINT;
		out97 : UINT;
	END_STRUCT;
	Pgs0985UpdatePrivType : 	STRUCT 
		init : BOOL := TRUE;
		step : USINT;
		read_io : AsIOAccRead;
		error : BOOL;
		time : REAL;
		cycle_time : UDINT;
		cycle_dt : REAL;
	END_STRUCT;
	Pgs0985Regs : 	STRUCT 
		AnalogInput01 : INT;
		AnalogInput02 : INT;
		AnalogInput03 : INT;
		AnalogInput04 : INT;
		AnalogInput05 : INT;
		AnalogInput06 : UINT;
		AnalogInput07 : INT;
		AnalogInput08 : INT;
		AnalogInput09 : INT;
		AnalogInput10 : INT;
		AnalogInput11 : INT;
		AnalogInput12 : INT;
		AnalogInput13 : INT;
		AnalogInput14 : INT;
		AnalogInput15 : INT;
		AnalogInput16 : INT;
		AnalogInput17 : INT;
		AnalogInput18 : INT;
		AnalogInput19 : INT;
		AnalogInput20 : INT;
		AnalogInput21 : INT;
		AnalogInput22 : INT;
		AnalogInput23 : INT;
		AnalogInput24 : UINT;
		AnalogInput25 : INT;
		AnalogInput26 : INT;
		AnalogInput27 : UINT;
		AnalogInput28 : UINT;
		AnalogInput29 : INT;
		AnalogInput30 : INT;
		AnalogInput31 : INT;
		AnalogInput32 : INT;
		AnalogInput33 : INT;
		AnalogInput34 : INT;
		AnalogInput35 : UINT;
		AnalogInput38 : DINT;
		AnalogInput39 : DINT;
		AnalogInput40 : DINT;
		AnalogInput41 : DINT;
		AnalogInput42 : DINT;
		AnalogInput43 : DINT;
	END_STRUCT;
	Pgs0985ConnectionType : 
		(
		PGS_0985_CON_ABCN,
		PGS_0985_CON_GBCN,
		PGS_0985_CON_AGCN,
		PGS_0985_CON_ABGN,
		PGS_0985_CON_ABC,
		PGS_0985_CON_GBC,
		PGS_0985_CON_AGC,
		PGS_0985_CON_ABG
		);
	Pgs0985SyncType : 
		(
		PGS_0985_SYNC_X4_X6,
		PGS_0985_SYNC_X4_X5,
		PGS_0985_SYNC_X4_X3,
		PGS_0985_SYNC_X5_X3
		);
END_TYPE
