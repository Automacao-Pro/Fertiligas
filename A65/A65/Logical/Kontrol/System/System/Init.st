

PROGRAM _INIT
    TagManager(enable:=TRUE);
    //Register Parameters
    PgsTagStartNode     (TagManager.ident, ADR('system'));
    //Sync
    PgsTagStartNode     (TagManager.ident, ADR('sync'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('U1Prim'),         SysPar.Sync.U1Prim);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('U1Sec'),          SysPar.Sync.U1Sec);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Enable3Phase'),   SysPar.Sync.Enable3Phase);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Connection'),     SysPar.Sync.Connection);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('U1Nom'),          SysPar.Sync.U1Nom);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UBmin'),          SysPar.Sync.UBmin);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('dFmax'),          SysPar.Sync.dFmax);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('dFmin'),          SysPar.Sync.dFmin);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('dUmax'),          SysPar.Sync.dUmax);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('dAngleMax'),      SysPar.Sync.dAngleMax);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('PhaseShift'),     SysPar.Sync.PhaseShift);  
    PgsTagEndNode       (TagManager.ident);//sync
    //Bus
    PgsTagStartNode     (TagManager.ident, ADR('exc'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UexcPrim'),     SysPar.Exc.UexcPrim);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UexcSec'),      SysPar.Exc.UexcSec);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UexcNom'),      SysPar.Exc.UexcNom);  
    PgsTagEndNode       (TagManager.ident);//bus
    //Gen
    PgsTagStartNode     (TagManager.ident, ADR('gen'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UmPrim'),     SysPar.Gen.UmPrim);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UmSec'),      SysPar.Gen.UmSec);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('ImPrim'),     SysPar.Gen.ImPrim);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('ImSec'),      SysPar.Gen.ImSec);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UmNom'),      SysPar.Gen.UmNom);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('SmNom'),      SysPar.Gen.SmNom);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('FmNom'),      SysPar.Gen.FmNom);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UfMin'),      SysPar.Gen.UfMin);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UfMax'),      SysPar.Gen.UfMax);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('UfNom'),      SysPar.Gen.UfNom);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('IfMin'),      SysPar.Gen.IfMin);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('IfMax'),      SysPar.Gen.IfMax);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('IfNom'),      SysPar.Gen.IfNom);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('RpmNom'),     SysPar.Gen.RpmNom);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('PPR1'),       SysPar.Gen.PPR1);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Pos1_0p'),    SysPar.Gen.Pos1_0p);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Pos1_100p'),  SysPar.Gen.Pos1_100p);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Pos2_0p'),    SysPar.Gen.Pos2_0p);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Pos2_100p'),  SysPar.Gen.Pos2_100p);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Pos3_0p'),    SysPar.Gen.Pos3_0p);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Pos3_100p'),  SysPar.Gen.Pos3_100p);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('ClockWise'),  SysPar.Gen.ClockWise);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('Connection'), SysPar.Gen.Connection);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('dRpm1Max'),   SysPar.Gen.dRpm1Max);  
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('PPR2'),       SysPar.Gen.PPR2);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('dRpm2Max'),   SysPar.Gen.dRpm2Max); 
    PgsTagEndNode       (TagManager.ident);//gen
    //IO
    PgsTagStartNode     (TagManager.ident, ADR('io'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AI1Type'),    SysIOPar.AI1Type);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AI2Type'),    SysIOPar.AI2Type);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AI3Type'),    SysIOPar.AI3Type);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AI4Type'),    SysIOPar.AI4Type);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO1Type'),    SysIOPar.AO1Type);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO2Type'),    SysIOPar.AO2Type);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO3Type'),    SysIOPar.AO3Type);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO4Type'),    SysIOPar.AO4Type);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO1min'),     SysIOPar.AO1min);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO1max'),     SysIOPar.AO1max);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO2min'),     SysIOPar.AO2min);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO2max'),     SysIOPar.AO2max);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO3min'),     SysIOPar.AO3min);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO3max'),     SysIOPar.AO3max);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO4min'),     SysIOPar.AO4min);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('AO4max'),     SysIOPar.AO4max);
    PgsTagEndNode       (TagManager.ident);//io

    PgsTagEndNode       (TagManager.ident);//system

    SysUpdate.UpdateAll := TRUE;

	//Horimetro
    PgsTagStartNode     (TagManager.ident, ADR('Horimetro'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('running_total'),	hour_running.set_total);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('online_total'),	hour_online.set_total);
	PgsTagEndNode       (TagManager.ident);//Horimetro
	
	//Energia
    PgsTagStartNode     (TagManager.ident, ADR('Energia'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('ativa_pos'),				energia_ativa.set_posEnergy);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('ativa_neg'),				energia_ativa.set_negEnergy);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('reativa_pos'),			energia_reativa.set_posEnergy);
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('reativa_neg'),			energia_reativa.set_negEnergy);
	PgsTagEndNode       (TagManager.ident);//Energia
	    
END_PROGRAM