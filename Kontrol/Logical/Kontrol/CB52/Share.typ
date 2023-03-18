
TYPE
	PgsCb52 : 	STRUCT 
		di : PgsCb52DI;
		st : PgsCb52ST;
	END_STRUCT;
	PgsCb52DI : 	STRUCT 
		opened : BOOL;
		closed : BOOL;
	END_STRUCT;
	PgsCb52ST : 	STRUCT 
		status_fail : BOOL;
		opened : BOOL;
		closed : BOOL;
	END_STRUCT;
END_TYPE
