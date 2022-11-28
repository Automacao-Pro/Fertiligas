
TYPE
	PgsCM0985di : 	STRUCT 
		PS24VFault : BOOL;
		UgPhSeqFault : BOOL;
		IgPhSeqFault : BOOL;
		UbPhSeqFault : BOOL;
		Us1PhSeqFault : BOOL;
		Us2PhSeqFault : BOOL;
		T59 : BOOL;
		T27_1 : BOOL;
		T27_2 : BOOL;
		T81O : BOOL;
		T81U : BOOL;
		T60V : BOOL;
		T60I : BOOL;
		T50N : BOOL;
		T50 : BOOL;
		T51 : BOOL;
		T32Q : BOOL;
		T32P : BOOL;
		T32N : BOOL;
		FO01 : BOOL;
		FO02 : BOOL;
		FO03 : BOOL;
		FO04 : BOOL;
		FO05 : BOOL;
		FO06 : BOOL;
	END_STRUCT;
	PgsCM0985do : 	STRUCT 
		INVDO05 : BOOL;
		RstError : BOOL;
		SyncSlip : BOOL;
		SyncCheck : BOOL;
		SyncDeadBus : BOOL;
	END_STRUCT;
	PgsCM0985io : 	STRUCT 
		di : PgsCM0985di;
		do : PgsCM0985do;
	END_STRUCT;
END_TYPE
