
TYPE
	PgsProtPhaseFaultParType : 	STRUCT 
		level : REAL; (*Level of unbalace (%)*)
	END_STRUCT;
	PgsProt24ParType : 	STRUCT 
		Vnom : REAL; (*Nominal Voltage*)
		HZnom : REAL; (*Nominal Frequency*)
		VHZ : REAL; (*Relation V/Hz Pickup (100 to 200%)*)
		Time : REAL; (*Time (0.04 to 400.0 s)*)
	END_STRUCT;
	PgsProt24PrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_dt : REAL;
		time : REAL;
	END_STRUCT;
	PgsProt40ParType : 	STRUCT 
		diameter : REAL; (*Mho diameter (0.1  to 100.0 Ohms)*)
		Offset : REAL; (*Offset (-50.0 to 0.0 Ohms)*)
		Time : REAL; (*Time (0.0 to 400.0 s)*)
	END_STRUCT;
	PgsProt40PrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_dt : REAL;
		time : REAL;
	END_STRUCT;
	PgsProt51CurveType : 
		(
		PGS_PROT_CURVE_51_U1,
		PGS_PROT_CURVE_51_U2,
		PGS_PROT_CURVE_51_U3,
		PGS_PROT_CURVE_51_U4,
		PGS_PROT_CURVE_51_U5,
		PGS_PROT_CURVE_51_C1,
		PGS_PROT_CURVE_51_C2,
		PGS_PROT_CURVE_51_C3,
		PGS_PROT_CURVE_51_C4,
		PGS_PROT_CURVE_51_C5
		);
	PgsProt51VParType : 	STRUCT 
		Vnom : REAL; (*Nominal Voltage*)
		Ipk : REAL;
		Td : REAL;
		Curve : PgsProt51CurveType;
	END_STRUCT;
	PgsProt51VPrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_dt : REAL;
		time : REAL;
	END_STRUCT;
	PgsProt62ParType : 	STRUCT 
		Under : BOOL;
		Level : REAL;
		Time : REAL;
	END_STRUCT;
	PgsProt62PrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_dt : REAL;
		time : REAL;
	END_STRUCT;
	PgsProt50BFParType : 	STRUCT 
		Time : REAL;
		Inom : REAL;
	END_STRUCT;
	PgsProt50BFPrivType : 	STRUCT 
		init : BOOL := TRUE;
		cycle_dt : REAL;
		time : REAL;
		o50bf : USINT;
	END_STRUCT;
END_TYPE
