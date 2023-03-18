
TYPE
	PgsTagVarInfo : 	STRUCT 
		type : PgsTagVarType;
		var : UDINT;
		bytes : USINT;
	END_STRUCT;
	PgsTagVarType : 
		(
		PGS_TAG_VAR_INVALID,
		PGS_TAG_VAR_BOOL,
		PGS_TAG_VAR_SINT,
		PGS_TAG_VAR_INT,
		PGS_TAG_VAR_DINT,
		PGS_TAG_VAR_LINT,
		PGS_TAG_VAR_USINT,
		PGS_TAG_VAR_UINT,
		PGS_TAG_VAR_UDINT,
		PGS_TAG_VAR_ULINT,
		PGS_TAG_VAR_REAL,
		PGS_TAG_VAR_LREAL
		);
	PgsTagStatus : 
		(
		PGS_TAG_ST_OK,
		PGS_TAG_ST_RUNNING,
		PGS_TAG_ST_DISABLED,
		PGS_TAG_ST_INVALID_IDENT,
		PGS_TAG_ST_READ_ERROR,
		PGS_TAG_ST_WRITE_ERROR
		);
END_TYPE