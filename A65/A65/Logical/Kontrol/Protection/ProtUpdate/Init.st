

PROGRAM _INIT
    TagManager(enable:=TRUE);
    //Register Parameters
    PgsTagStartNode     (TagManager.ident, ADR('prot.Parameter'));
	// Phase Overvoltage
    // P59P
    PgsTagStartNode     (TagManager.ident, ADR('P59P'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P59P_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T59P_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P59P_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T59P_L2); 
    PgsTagEndNode       (TagManager.ident);//P59P
	// Phase-Phase Overvoltage
    // P59PP
    PgsTagStartNode     (TagManager.ident, ADR('P59PP'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P59PP_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T59PP_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P59PP_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T59PP_L2); 
    PgsTagEndNode       (TagManager.ident);//P59PP
	// Positive Sequence Overvoltage
    // P59V1
    PgsTagStartNode     (TagManager.ident, ADR('P59V1'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P59V1_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T59V1_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P59V1_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T59V1_L2); 
    PgsTagEndNode       (TagManager.ident);//P59V1
	// Negative Sequence Overvoltage
    // P59Q
    PgsTagStartNode     (TagManager.ident, ADR('P59Q'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P59Q_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T59Q_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P59Q_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T59Q_L2); 
    PgsTagEndNode       (TagManager.ident);//P59Q
	// Zero Sequence Overvoltage 
    // P59G
    PgsTagStartNode     (TagManager.ident, ADR('P59G'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P59G_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T59G_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P59G_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T59G_L2); 
    PgsTagEndNode       (TagManager.ident);//P59G
	// Phase Undervoltage
    // P27P
    PgsTagStartNode     (TagManager.ident, ADR('P27P'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P27P_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T27P_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P27P_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T27P_L2); 
    PgsTagEndNode       (TagManager.ident);//P27P
	// Phase-Phase Undervoltage
    // P27PP
    PgsTagStartNode     (TagManager.ident, ADR('P27PP'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P27PP_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T27PP_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P27PP_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T27PP_L2); 
    PgsTagEndNode       (TagManager.ident);//P27PP
	// Positive Sequence Undervoltage
    // P27V1
    PgsTagStartNode     (TagManager.ident, ADR('P27V1'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P27V1_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T27V1_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P27V1_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T27V1_L2); 
    PgsTagEndNode       (TagManager.ident);//P27V1
	// Overfrequency
    // P81O
    PgsTagStartNode     (TagManager.ident, ADR('P81O'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P81O_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T81O_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P81O_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T81O_L2); 
    PgsTagEndNode       (TagManager.ident);//P81O
	// Underfrequency
    // P81U
    PgsTagStartNode     (TagManager.ident, ADR('P81U'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P81U_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T81U_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P81U_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T81U_L2); 
    PgsTagEndNode       (TagManager.ident);//P81U
	// Over Active Power
    // P32OP
    PgsTagStartNode     (TagManager.ident, ADR('P32OP'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P32OP_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T32OP_L1); 
    PgsTagEndNode       (TagManager.ident);//P32OP
	// Under Active Power
    // P32UP
    PgsTagStartNode     (TagManager.ident, ADR('P32UP'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P32UP_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T32UP_L1); 
    PgsTagEndNode       (TagManager.ident);//P32UP
	// Over Reactive Power
    // P32OQ
    PgsTagStartNode     (TagManager.ident, ADR('P32OQ'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P32OQ_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T32OQ_L1); 
    PgsTagEndNode       (TagManager.ident);//P32OQ
	// Under Reactive Power
    // P32UQ
    PgsTagStartNode     (TagManager.ident, ADR('P32UQ'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P32UQ_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T32UQ_L1); 
    PgsTagEndNode       (TagManager.ident);//P32UQ
	// Phase Instantaneous Overcurrent
    // P50P
    PgsTagStartNode     (TagManager.ident, ADR('P50P'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P50P_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T50P_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P50P_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T50P_L2); 
    PgsTagEndNode       (TagManager.ident);//P50P
	// Negative Sequence Instantaneous Overcurrent
    // P50Q
    PgsTagStartNode     (TagManager.ident, ADR('P50Q'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P50Q_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T50Q_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P50Q_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T50Q_L2); 
    PgsTagEndNode       (TagManager.ident);//P50Q
	// Residual Instantaneous Overcurrent
    // P50G
    PgsTagStartNode     (TagManager.ident, ADR('P50G'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P50G_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T50G_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L2'),     ProtPar.P50G_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T50G_L2); 
    PgsTagEndNode       (TagManager.ident);//P50G
	// Voltage Restraint Time Overcurrent - 51V
    // P51V
    PgsTagStartNode     (TagManager.ident, ADR('P51V'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P51V_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T51V_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('C1'),     ProtPar.C51V_L1); 
    PgsTagEndNode       (TagManager.ident);//P51V
	// Phase Time Overcurrent - 51P
    // P51P
    PgsTagStartNode     (TagManager.ident, ADR('P51P'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P51P_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T51P_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('C1'),     ProtPar.C51P_L1); 
    PgsTagEndNode       (TagManager.ident);//P51P
	// Negative Sequence Time Overcurrent - 51Q
    // P51Q
    PgsTagStartNode     (TagManager.ident, ADR('P51Q'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P51Q_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T51Q_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('C1'),     ProtPar.C51Q_L1); 
    PgsTagEndNode       (TagManager.ident);//P51Q
	// Residual Time Overcurrent - 51Q
    // P51G
    PgsTagStartNode     (TagManager.ident, ADR('P51G'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P51G_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T51G_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('C1'),     ProtPar.C51G_L1); 
    PgsTagEndNode       (TagManager.ident);//P51G
	// V/Hz Element - 24
    // P24
    PgsTagStartNode     (TagManager.ident, ADR('P24'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('L1'),     ProtPar.P24_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T24_L1); 
    PgsTagEndNode       (TagManager.ident);//P24
    // Loss of Field - 40
    // P40
    PgsTagStartNode     (TagManager.ident, ADR('P40'));
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('D1'),     ProtPar.D40_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('O1'),     ProtPar.O40_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T1'),     ProtPar.T40_L1); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('D2'),     ProtPar.D40_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('O2'),     ProtPar.O40_L2); 
    PgsTagRegisterREAL  (TagManager.ident, TRUE, ADR('T2'),     ProtPar.T40_L2); 
    PgsTagEndNode       (TagManager.ident);//P40
    PgsTagEndNode       (TagManager.ident);//Parameter
    
    //Flags
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('KeyInvalid'),        ProtFlag.KeyInvalid);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('WatchDog'),          ProtFlag.WatchDog);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('GenPhAFault'),       ProtFlag.GenPhAFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('GenPhBFault'),       ProtFlag.GenPhBFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('GenPhCFault'),       ProtFlag.GenPhCFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('ExcPhAFault'),       ProtFlag.ExcPhAFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('ExcPhBFault'),       ProtFlag.ExcPhBFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('ExcPhCFault'),       ProtFlag.ExcPhCFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('ExcCrowBar'),        ProtFlag.ExcCrowBar);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('ExcOverTemp'),       ProtFlag.ExcOverTemp);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('UgPhSeqFault'),      ProtFlag.UgPhSeqFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('IgPhSeqFault'),      ProtFlag.IgPhSeqFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('Us1PhSeqFault'),     ProtFlag.Us1PhSeqFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('PwrSrcCpuIOFault'),  ProtFlag.PwrSrcCpuIOFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('PwrSrcM1IOFault'),   ProtFlag.PwrSrcM1IOFault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('M1Fault'),           ProtFlag.M1Fault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('M2Fault'),           ProtFlag.M2Fault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('M3Fault'),           ProtFlag.M3Fault);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T86E'),              ProtFlag.T86E);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T86H'),              ProtFlag.T86H);
    //P59P_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59A_L1'),           ProtFlag.P59A_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59A_L1'),           ProtFlag.T59A_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59A_L1'),           ProtFlag.L59A_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59B_L1'),           ProtFlag.P59B_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59B_L1'),           ProtFlag.T59B_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59B_L1'),           ProtFlag.L59B_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59C_L1'),           ProtFlag.P59C_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59C_L1'),           ProtFlag.T59C_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59C_L1'),           ProtFlag.L59C_L1);
    //P59P_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59A_L2'),           ProtFlag.P59A_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59A_L2'),           ProtFlag.T59A_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59A_L2'),           ProtFlag.L59A_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59B_L2'),           ProtFlag.P59B_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59B_L2'),           ProtFlag.T59B_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59B_L2'),           ProtFlag.L59B_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59C_L2'),           ProtFlag.P59C_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59C_L2'),           ProtFlag.T59C_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59C_L2'),           ProtFlag.L59C_L2);
    //P59PP_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59AB_L1'),          ProtFlag.P59AB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59AB_L1'),          ProtFlag.T59AB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59AB_L1'),          ProtFlag.L59AB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59BC_L1'),          ProtFlag.P59BC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59BC_L1'),          ProtFlag.T59BC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59BC_L1'),          ProtFlag.L59BC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59CA_L1'),          ProtFlag.P59CA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59CA_L1'),          ProtFlag.T59CA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59CA_L1'),          ProtFlag.L59CA_L1);
    //P59PP_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59AB_L2'),          ProtFlag.P59AB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59AB_L2'),          ProtFlag.T59AB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59AB_L2'),          ProtFlag.L59AB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59BC_L2'),          ProtFlag.P59BC_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59BC_L2'),          ProtFlag.T59BC_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59BC_L2'),          ProtFlag.L59BC_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59CA_L2'),          ProtFlag.P59CA_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59CA_L2'),          ProtFlag.T59CA_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59CA_L2'),          ProtFlag.L59CA_L2);
    //P59V1_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59V1_L1'),          ProtFlag.P59V1_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59V1_L1'),          ProtFlag.T59V1_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59V1_L1'),          ProtFlag.L59V1_L1);
    //P59V1_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59V1_L2'),          ProtFlag.P59V1_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59V1_L2'),          ProtFlag.T59V1_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59V1_L2'),          ProtFlag.L59V1_L2);
    //P59Q_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59Q_L1'),           ProtFlag.P59Q_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59Q_L1'),           ProtFlag.T59Q_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59Q_L1'),           ProtFlag.L59Q_L1);
    //P59Q_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59Q_L2'),           ProtFlag.P59Q_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59Q_L2'),           ProtFlag.T59Q_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59Q_L2'),           ProtFlag.L59Q_L2);
    //P59G_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59G_L1'),           ProtFlag.P59G_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59G_L1'),           ProtFlag.T59G_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59G_L1'),           ProtFlag.L59G_L1);
    //P59G_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P59G_L2'),           ProtFlag.P59G_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T59G_L2'),           ProtFlag.T59G_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L59G_L2'),           ProtFlag.L59G_L2);
    //P27P_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27A_L1'),           ProtFlag.P27A_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27A_L1'),           ProtFlag.T27A_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27A_L1'),           ProtFlag.L27A_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27B_L1'),           ProtFlag.P27B_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27B_L1'),           ProtFlag.T27B_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27B_L1'),           ProtFlag.L27B_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27C_L1'),           ProtFlag.P27C_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27C_L1'),           ProtFlag.T27C_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27C_L1'),           ProtFlag.L27C_L1);
    //P27P_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27A_L2'),           ProtFlag.P27A_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27A_L2'),           ProtFlag.T27A_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27A_L2'),           ProtFlag.L27A_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27B_L2'),           ProtFlag.P27B_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27B_L2'),           ProtFlag.T27B_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27B_L2'),           ProtFlag.L27B_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27C_L2'),           ProtFlag.P27C_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27C_L2'),           ProtFlag.T27C_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27C_L2'),           ProtFlag.L27C_L2);
    //P27PP_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27AB_L1'),          ProtFlag.P27AB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27AB_L1'),          ProtFlag.T27AB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27AB_L1'),          ProtFlag.L27AB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27BC_L1'),          ProtFlag.P27BC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27BC_L1'),          ProtFlag.T27BC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27BC_L1'),          ProtFlag.L27BC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27CA_L1'),          ProtFlag.P27CA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27CA_L1'),          ProtFlag.T27CA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27CA_L1'),          ProtFlag.L27CA_L1);
    //P27PP_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27AB_L2'),          ProtFlag.P27AB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27AB_L2'),          ProtFlag.T27AB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27AB_L2'),          ProtFlag.L27AB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27BC_L2'),          ProtFlag.P27BC_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27BC_L2'),          ProtFlag.T27BC_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27BC_L2'),          ProtFlag.L27BC_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27CA_L2'),          ProtFlag.P27CA_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27CA_L2'),          ProtFlag.T27CA_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27CA_L2'),          ProtFlag.L27CA_L2);
    //P27V1_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27V1_L1'),          ProtFlag.P27V1_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27V1_L1'),          ProtFlag.T27V1_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27V1_L1'),          ProtFlag.L27V1_L1);
    //P27V1_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P27V1_L2'),          ProtFlag.P27V1_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T27V1_L2'),          ProtFlag.T27V1_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L27V1_L2'),          ProtFlag.L27V1_L2);
    //P81O_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P81O_L1'),           ProtFlag.P81O_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T81O_L1'),           ProtFlag.T81O_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L81O_L1'),           ProtFlag.L81O_L1);
    //P81O_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P81O_L2'),           ProtFlag.P81O_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T81O_L2'),           ProtFlag.T81O_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L81O_L2'),           ProtFlag.L81O_L2);
    //P81U_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P81U_L1'),           ProtFlag.P81U_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T81U_L1'),           ProtFlag.T81U_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L81U_L1'),           ProtFlag.L81U_L1);
    //P81U_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P81U_L2'),           ProtFlag.P81U_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T81U_L2'),           ProtFlag.T81U_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L81U_L2'),           ProtFlag.L81U_L2);
    //P32OP_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P32OP_L1'),          ProtFlag.P32OP_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T32OP_L1'),          ProtFlag.T32OP_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L32OP_L1'),          ProtFlag.L32OP_L1);
    //P32UP_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P32UP_L1'),          ProtFlag.P32UP_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T32UP_L1'),          ProtFlag.T32UP_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L32UP_L1'),          ProtFlag.L32UP_L1);
    //P32OQ_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P32OQ_L1'),          ProtFlag.P32OQ_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T32OQ_L1'),          ProtFlag.T32OQ_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L32OQ_L1'),          ProtFlag.L32OQ_L1);
    //P32UQ_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P32UQ_L1'),          ProtFlag.P32UQ_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T32UQ_L1'),          ProtFlag.T32UQ_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L32UQ_L1'),          ProtFlag.L32UQ_L1);
    //P50P_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50PA_L1'),          ProtFlag.P50PA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50PA_L1'),          ProtFlag.T50PA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50PA_L1'),          ProtFlag.L50PA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50PB_L1'),          ProtFlag.P50PB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50PB_L1'),          ProtFlag.T50PB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50PB_L1'),          ProtFlag.L50PB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50PC_L1'),          ProtFlag.P50PC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50PC_L1'),          ProtFlag.T50PC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50PC_L1'),          ProtFlag.L50PC_L1);
    //P50P_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50PA_L2'),          ProtFlag.P50PA_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50PA_L2'),          ProtFlag.T50PA_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50PA_L2'),          ProtFlag.L50PA_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50PB_L2'),          ProtFlag.P50PB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50PB_L2'),          ProtFlag.T50PB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50PB_L2'),          ProtFlag.L50PB_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50PC_L2'),          ProtFlag.P50PC_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50PC_L2'),          ProtFlag.T50PC_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50PC_L2'),          ProtFlag.L50PC_L2);
    //P50Q_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50Q_L1'),           ProtFlag.P50Q_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50Q_L1'),           ProtFlag.T50Q_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50Q_L1'),           ProtFlag.L50Q_L1);
    //P50Q_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50Q_L2'),           ProtFlag.P50Q_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50Q_L2'),           ProtFlag.T50Q_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50Q_L2'),           ProtFlag.L50Q_L2);
    //P50G_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50G_L1'),           ProtFlag.P50G_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50G_L1'),           ProtFlag.T50G_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50G_L1'),           ProtFlag.L50G_L1);
    //P50G_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P50G_L2'),           ProtFlag.P50G_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T50G_L2'),           ProtFlag.T50G_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L50G_L2'),           ProtFlag.L50G_L2);
    //P51V_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P51VA_L1'),          ProtFlag.P51VA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T51VA_L1'),          ProtFlag.T51VA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L51VA_L1'),          ProtFlag.L51VA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P51VB_L1'),          ProtFlag.P51VB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T51VB_L1'),          ProtFlag.T51VB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L51VB_L1'),          ProtFlag.L51VB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P51VC_L1'),          ProtFlag.P51VC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T51VC_L1'),          ProtFlag.T51VC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L51VC_L1'),          ProtFlag.L51VC_L1);
    //P51P_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P51PA_L1'),          ProtFlag.P51PA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T51PA_L1'),          ProtFlag.T51PA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L51PA_L1'),          ProtFlag.L51PA_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P51PB_L1'),          ProtFlag.P51PB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T51PB_L1'),          ProtFlag.T51PB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L51PB_L1'),          ProtFlag.L51PB_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P51PC_L1'),          ProtFlag.P51PC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T51PC_L1'),          ProtFlag.T51PC_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L51PC_L1'),          ProtFlag.L51PC_L1);
    //P51Q_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P51Q_L1'),           ProtFlag.P51Q_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T51Q_L1'),           ProtFlag.T51Q_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L51Q_L1'),           ProtFlag.L51Q_L1);
    //P51G_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P51G_L1'),           ProtFlag.P51G_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T51G_L1'),           ProtFlag.T51G_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L51G_L1'),           ProtFlag.L51G_L1);
    //P24_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P24_L1'),            ProtFlag.P24_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T24_L1'),            ProtFlag.T24_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L24_L1'),            ProtFlag.L24_L1);
    //P40_L1
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P40_L1'),            ProtFlag.P40_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T40_L1'),            ProtFlag.T40_L1);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L40_L1'),            ProtFlag.L40_L1);
    //P40_L2
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('P40_L2'),            ProtFlag.P40_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('T40_L2'),            ProtFlag.T40_L2);
    PgsTagRegisterBOOL  (TagManager.ident, FALSE, ADR('L40_L2'),            ProtFlag.L40_L2);
           	 
    PgsTagEndNode       (TagManager.ident);//prot    	 
END_PROGRAM