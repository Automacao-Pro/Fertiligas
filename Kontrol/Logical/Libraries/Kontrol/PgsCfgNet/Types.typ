
TYPE
	PgsCfgNetBaudrate : 
		(
		PGS_CFG_NET_BAUDRATE_AUTO := 0,
		PGS_CFG_NET_BAUDRATE_10HD := 10,
		PGS_CFG_NET_BAUDRATE_10FD := 11,
		PGS_CFG_NET_BAUDRATE_100HD := 100,
		PGS_CFG_NET_BAUDRATE_100FD := 101
		);
	PgsCfgNetMode : 
		(
		PGS_CFG_NET_MODE_MANUAL := 0,
		PGS_CFG_NET_MODE_DHCP := 1
		);
	PgsCfgNetTimeZone : 
		(
		UTC12N := 5,
		UTC11N := 10,
		UTC10N := 15,
		UTC09N := 20,
		UTC08N := 25,
		UTC07N := 30,
		UTC06N := 55,
		UTC05N := 60,
		UTC04N := 80,
		UTC03N := 100,
		UTC02N := 115,
		UTC01N := 125,
		UTC00 := 135,
		UTC01P := 155,
		UTC02P := 180,
		UTC03P := 195,
		UTC04P := 220,
		UTC05P := 240,
		UTC06P := 260,
		UTC07P := 285,
		UTC08P := 295,
		UTC09P := 320,
		UTC10P := 340,
		UTC11P := 365,
		UTC12P := 375
		);
	PgsCfgNetIf2Par : 	STRUCT 
		HostName : STRING[80];
		baudrate : PgsCfgNetBaudrate;
		mode : PgsCfgNetMode;
		gateway : STRING[15];
		ip : STRING[15];
		mask : STRING[15];
		ina : USINT;
	END_STRUCT;
	PgsCfgNetIf3Par : 	STRUCT 
		mode : PgsCfgNetMode;
		ip : STRING[15];
		mask : STRING[15];
		ina : USINT;
	END_STRUCT;
	PgsCfgNetNtpPar : 	STRUCT 
		timezone : PgsCfgNetTimeZone;
		serverAddr1 : STRING[80];
		serverAddr2 : STRING[80];
		serverAddr3 : STRING[80];
		serverAddr4 : STRING[80];
	END_STRUCT;
	PgsCfgNetPar : 	STRUCT 
		if2 : PgsCfgNetIf2Par;
		if3 : PgsCfgNetIf3Par;
		ntp : PgsCfgNetNtpPar;
	END_STRUCT;
END_TYPE
