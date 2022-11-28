

PROGRAM _INIT
    
    TagManager(enable:=TRUE);

//    EvtGroup.enable     := TRUE;
//    EvtGroup.group      := ADR('Control');
//    EvtGroup.pData      := ADR(EvtMemory);
//    EvtGroup.dataSize   := SIZEOF(EvtMemory);
    
    //Meter Base
	meter();
	
	//Curve1
	curve1();
	link_curve1.CurveIdent	:= curve1.Ident;
    PgsTagRegisterCurve(TagManager.ident, ADR('curve1'), curve1);
	
	//Curve2
	curve2();
	link_curve2.CurveIdent	:= curve2.Ident;
    PgsTagRegisterCurve(TagManager.ident, ADR('curve2'), curve2);
	
	//Curve3
	curve3();
	link_curve3.CurveIdent	:= curve3.Ident;
    PgsTagRegisterCurve(TagManager.ident, ADR('curve3'), curve3);
		
	//Pos3:
	pos3.Mode				:= PGS_POS_MD_AUTO;
	pos3.PosIdent			:= 0;
	pos3();
	link_pos3.PosIdent		:= pos3.Ident;
    PgsTagRegisterPOS(TagManager.ident, ADR('pos3'), pos3);
    
	//POS3
	scale_pos3.y1			:= 0.0;
	scale_pos3.y2			:= 100.0;
	
	//Po2:
	pos2.Mode				:= PGS_POS_MD_AUTO;
	pos2.PosIdent			:= pos3.Ident;
	pos2();
	link_pos2.PosIdent		:= pos2.Ident;
    PgsTagRegisterPOS(TagManager.ident, ADR('pos2'), pos2);
    
	//POS2
	scale_pos2.y1			:= 0.0;
	scale_pos2.y2			:= 100.0;
    
	//Pos1:
	pos1.Mode				:= PGS_POS_MD_AUTO;
	pos1.PosIdent			:= pos2.Ident;
	pos1();
	link_pos1.PosIdent		:= pos1.Ident;
    PgsTagRegisterPOS(TagManager.ident, ADR('pos1'), pos1);
    
	//POS1
	scale_pos1.y1			:= 0.0;
    scale_pos1.y2			:= 100.0;
    
	//GOV
	gov.DigInputs.Auto		:= TRUE;
	gov.MeterIdent          := meter.Ident;
	gov.PosIdent			:= pos1.Ident;
    gov.CtrlOnline          := PGS_GOV_CA_PWR;
	gov();
	link_gov.GovIdent	    := gov.Ident;
    PgsTagRegisterGOV(TagManager.ident, ADR('gov'), gov);
    
    //RPM
	filter_rpm1.CTE 	    := 32;
	filter_rpm2.CTE 	    := 32;

	//AVR
	avr.DigInputs.Auto		:=	TRUE;
    avr.MeterIdent          := meter.Ident;
    avr.CtrlOnline          := PGS_AVR_CA_QM;
    avr();
	link_avr.AvrIdent       := avr.Ident;
    PgsTagRegisterAVR(TagManager.ident, ADR('avr'), avr);     
	
	//field	
	filter_uf.enable	    := TRUE;
	filter_uf.base 	        := 32;
	filter_uf();
       
	A65.di.gov_ctrl_pwr_enable	:= TRUE;
	A65.di.avr_ctrl_qm_enable	:= TRUE;
	
	//Meter Register
    PgsTagStartNode     (TagManager.ident, ADR('meter'));
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Um'),        meter.In.Um);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Im'),        meter.In.Im);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Pm'),        meter.In.Pm);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Qm'),        meter.In.Qm);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Sm'),        meter.In.Sm);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('PF'),        meter.In.PF);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Fm'),        meter.In.Fm);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Uf'),        meter.In.Uf);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('If'),        meter.In.If);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Rot'),       meter.In.Rot);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Pos1'),      pos1.PosIn);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Pos2'),      pos2.PosIn);
    PgsTagRegisterREAL  (TagManager.ident, FALSE, ADR('Pos3'),      pos3.PosIn);
    PgsTagEndNode       (TagManager.ident);//meter 
        		
END_PROGRAM