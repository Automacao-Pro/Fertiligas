

PROGRAM _EXIT
	
	mbusDataClose( dtaIdent := mbusData.dtaIdent );
	
	mbusLinkClose( lnkIdent := link_avr.Ident );
	mbusLinkClose( lnkIdent := link_gov.Ident );
	
	mbusLinkClose( lnkIdent := link_pos1.Ident );
	mbusLinkClose( lnkIdent := link_pos2.Ident );
	mbusLinkClose( lnkIdent := link_pos3.Ident );
	mbusLinkClose( lnkIdent := link_curve1.Ident );
	mbusLinkClose( lnkIdent := link_curve2.Ident );
	mbusLinkClose( lnkIdent := link_curve3.Ident );
	
	mbusLinkClose( lnkIdent := link_meter.Ident );
	
	mbusLinkClose( lnkIdent := link_system.Ident );
	mbusLinkClose( lnkIdent := link_sysIO.Ident );
	mbusLinkClose( lnkIdent := link_prot.Ident );
        
    mbusTcpClose( enable := TRUE, ident := mbusTcpOpen.ident );

    telnetClose( enable := TRUE, ident := telnetOpen.ident );
	 
END_PROGRAM