
TYPE
	PgsParEthType : 	STRUCT 
		IF2_GATEWAY : STRING[16];
		IF2_BAUDRATE : USINT;
		IF2_MODE : USINT;
		IF2_IP : STRING[16];
		IF2_MASK : STRING[16];
		IF2_INA : USINT;
		IF3_MODE : USINT;
		IF3_IP : STRING[16];
		IF3_MASK : STRING[16];
		IF3_INA : USINT;
		update : BOOL;
		reading : BOOL;
		read_file : BOOL;
		write_file : BOOL;
	END_STRUCT;
END_TYPE
