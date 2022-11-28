
PROGRAM _CYCLIC
    
    CfgNet();

	reset_cfg_net(IN:=A65.di.reset, PT:=T#30s);
	
    // Check Reset Input
	IF reset_cfg_net.Q THEN
		CfgNet.parameter.if2.HostName	:= 'Kontroll';
		CfgNet.parameter.if2.ip			:= '192.168.000.100';
		CfgNet.parameter.if2.mask		:= '255.255.255.000';
		CfgNet.parameter.if2.gateway	:= '192.168.000.001';
		CfgNet.parameter.if2.baudrate	:= PGS_CFG_NET_BAUDRATE_AUTO;
		CfgNet.parameter.if2.mode		:= PGS_CFG_NET_MODE_MANUAL;
		CfgNet.parameter.if2.ina		:= 1;
		CfgNet.set  := TRUE;
	END_IF;
	
	
	IF PgsTagValid(TagManager.ident) AND Update0985 THEN
		Update0985 := FALSE;
        cm0985();
		cm0985Gen();
		cm0985Main();
		cm0985Bus();
		cm0985GenPu();
        cm0985GenPf();
        cm0985GenPa();
        cm0985GenPc();
        cm0985GenPp();
		cm0985DO1();
        cm0985Sync();
	END_IF
    cm0985Update();
    

END_PROGRAM
