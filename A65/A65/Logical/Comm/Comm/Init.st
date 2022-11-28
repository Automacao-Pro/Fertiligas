
PROGRAM _INIT

    mbusData( Devices := 1 );
    
	//Device 1
    mbusDevice(
        dtaIdent        := mbusData.dtaIdent,
        id              := 1,
		Links			:= 6,
		InputBlocks		:= 1,
        CoilBlocks      := 3
    );
    	
    //AVR
	link_avr(
		CoilAddress		:= 4097,
		HoldingAddress	:= 5121,
		InputAddress	:= 7169,
        //GainUm          := 10.0,
        //GainIm          := 10.0,
        //GainSm          := 10.0,
        //GainUf          := 100.0,
        //GainIf          := 100.0,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_avr.Ident
	);
	
    //GOV
	link_gov(
		CoilAddress		:= 8193,
		HoldingAddress	:= 9217,
		InputAddress	:= 11265,
        //GainUm          := 10.0,
        //GainSm          := 10.0,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_gov.Ident
	);
    
	//POS1
	link_pos1(
		CoilAddress		:= 12289,
		HoldingAddress	:= 12545,
		InputAddress	:= 13569,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_pos1.Ident
	);
	//Curve1
	link_curve1(
		HoldingAddress	:= 13825,
		InputAddress	:= 13953,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_curve1.Ident
	);
	
	
	//POS2
	link_pos2(
		CoilAddress		:= 14337,
		HoldingAddress	:= 14593,
		InputAddress	:= 15617,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_pos2.Ident
	);
	//Curve2
	link_curve2(
		HoldingAddress	:= 15873,
		InputAddress	:= 16001,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_curve2.Ident
	);
		
	//POS3
	link_pos3(
		CoilAddress		:= 16385,
		HoldingAddress	:= 16641,
		InputAddress	:= 17665,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_pos3.Ident
	);
	//Curve3
	link_curve3(
		HoldingAddress	:= 17921,
		InputAddress	:= 18049,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_curve3.Ident
	);
	
    // MdbMeter
	link_meter(
        pBlock	        := ADR(MdbMeter),
        blockLen	    := SIZEOF(MdbMeter),
		Address			:= 2561,
		Holding			:= FALSE,
		//Gain			:= 10.0,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_meter.Ident
	);
    
    // System Parameter
	link_system(
        pBlock	        := ADR(SysPar),
        blockLen	    := SIZEOF(SysPar),
		Address			:= 1025,
		Holding			:= TRUE,
		//Gain			:= 10,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_system.Ident
	);
    //
    link_sysIO(
        pBlock	        := ADR(SysIOPar),
        blockLen	    := SIZEOF(SysIOPar),
		Address			:= 1255,
		Holding			:= TRUE,
		//Gain			:= 10,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_sysIO.Ident
	);

    //SysUpdate
 	mbusSetBlock(
        devIdent    := mbusDevice.devIdent,
        BlockType   := PGS_MB_BLK_COIL,
        Address     := 1,
        pBlock      := ADR(SysUpdate),
        blockLen    := SIZEOF(SysUpdate)
    );
    
    //Protections
 	mbusSetBlock(
        devIdent    := mbusDevice.devIdent,
        BlockType   := PGS_MB_BLK_COIL,
        Address     := 40961,
        pBlock      := ADR(ProtFlag),
        blockLen    := SIZEOF(ProtFlag)
	);
	// Protections Parameter
	link_prot(
		pBlock	        := ADR(ProtPar),
		blockLen	    := SIZEOF(ProtPar),
		Address			:= 41985,
		Holding			:= TRUE,
		//Gain			:= 10,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_prot.Ident
	);
    
//==================================================================================================================	
    //Automação
    link_mdb_medidas(
		pBlock	        := ADR(MDB_Medidas),
		blockLen	    := SIZEOF(MDB_Medidas),
		Address			:= 20000,
		Holding			:= FALSE,
		//Gain			:= 10,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_mdb_medidas.Ident
	);
    link_mdb_parametros(
		pBlock	        := ADR(MDB_Parametros),
		blockLen	    := SIZEOF(MDB_Parametros),
		Address			:= 21000,
		Holding			:= TRUE,
		//Gain			:= 10,
		Float			:= TRUE,
		ModiconFormat	:= TRUE
	);
	mbusSetLink(
		devIdent	:= mbusDevice.devIdent,
		lnkIdent	:= link_mdb_parametros.Ident
	);
	mbusSetBlock(
        devIdent    := mbusDevice.devIdent,
        BlockType   := PGS_MB_BLK_COIL,
        Address     := 22000,
        pBlock      := ADR(MDB_Status),
        blockLen    := SIZEOF(MDB_Status)
    );
	mbusSetBlock(
        devIdent    := mbusDevice.devIdent,
        BlockType   := PGS_MB_BLK_COIL,
        Address     := 23000,
        pBlock      := ADR(MDB_Comandos),
        blockLen    := SIZEOF(MDB_Comandos)
    );
	mbusSetBlock(
		devIdent    := mbusDevice.devIdent,
		BlockType   := PGS_MB_BLK_COIL,
		Address     := 24000,
		pBlock      := ADR(MDB_Alarmes),
		blockLen    := SIZEOF(MDB_Alarmes)
    );

//==================================================================================================================	
    
    //TCP    
    mbusTcpOpen (
        enable      := TRUE,
        dtaIdent    := mbusData.dtaIdent,
        port        := 502
    );
    mbusTcpUpdate.enable    := TRUE;
    mbusTcpUpdate.timeout   := 5.0;

    //Telnet
    telnetOpen (
        enable      := TRUE,
        port        := 23
    );
    telnetUpdate.enable    := TRUE;
    telnetUpdate.timeout   := 3600.0;
    	
END_PROGRAM