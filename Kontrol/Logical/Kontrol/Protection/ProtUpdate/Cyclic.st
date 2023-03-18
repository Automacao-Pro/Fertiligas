
PROGRAM _CYCLIC
	IF SysUpdate.UpdateProt THEN
		SysUpdate.UpdateProt		:= FALSE;
		
		//59P
		P59A_L1.Parameter.Under		:= FALSE;
		P59A_L1.Parameter.Level		:= ProtPar.P59P_L1 * meter.Base.Um / SQRT(3.0);
		P59A_L1.Parameter.Time		:= ProtPar.T59P_L1;
		
		P59B_L1.Parameter := P59C_L1.Parameter := P59A_L1.Parameter;
		
		P59A_L2.Parameter.Under		:= FALSE;
		P59A_L2.Parameter.Level		:= ProtPar.P59P_L2 * meter.Base.Um / SQRT(3.0);
		P59A_L2.Parameter.Time		:= ProtPar.T59P_L2;
		
		P59B_L2.Parameter := P59C_L2.Parameter := P59A_L2.Parameter;
		
		//59PP
		P59AB_L1.Parameter.Under	:= FALSE;
		P59AB_L1.Parameter.Level	:= ProtPar.P59PP_L1 * meter.Base.Um;
		P59AB_L1.Parameter.Time		:= ProtPar.T59PP_L1;
		
		P59BC_L1.Parameter := P59CA_L1.Parameter := P59AB_L1.Parameter;
		
		P59AB_L2.Parameter.Under	:= FALSE;
		P59AB_L2.Parameter.Level	:= ProtPar.P59PP_L2 * meter.Base.Um;
		P59AB_L2.Parameter.Time		:= ProtPar.T59PP_L2;
		
		P59BC_L2.Parameter := P59CA_L2.Parameter := P59AB_L2.Parameter;
		
		//59Q
		P59Q_L1.Parameter.Under		:= FALSE;
		P59Q_L1.Parameter.Level		:= ProtPar.P59Q_L1 * meter.Base.Um / SQRT(3.0);
		P59Q_L1.Parameter.Time		:= ProtPar.T59Q_L1;
		
		P59Q_L2.Parameter.Under		:= FALSE;
		P59Q_L2.Parameter.Level		:= ProtPar.P59Q_L2 * meter.Base.Um / SQRT(3.0);
		P59Q_L2.Parameter.Time		:= ProtPar.T59Q_L2;
		
		//59G
		P59G_L1.Parameter.Under		:= FALSE;
		P59G_L1.Parameter.Level		:= ProtPar.P59G_L1 * meter.Base.Um / SQRT(3.0);
		P59G_L1.Parameter.Time		:= ProtPar.T59G_L1;
		
		P59G_L2.Parameter.Under		:= FALSE;
		P59G_L2.Parameter.Level		:= ProtPar.P59G_L2 * meter.Base.Um / SQRT(3.0);
		P59G_L2.Parameter.Time		:= ProtPar.T59G_L2;
		
		//59V1
		P59V1_L1.Parameter.Under	:= FALSE;
		P59V1_L1.Parameter.Level	:= ProtPar.P59V1_L1 * meter.Base.Um / SQRT(3.0);
		P59V1_L1.Parameter.Time		:= ProtPar.T59V1_L1;

		P59V1_L2.Parameter.Under	:= FALSE;
		P59V1_L2.Parameter.Level	:= ProtPar.P59V1_L2 * meter.Base.Um / SQRT(3.0);
		P59V1_L2.Parameter.Time		:= ProtPar.T59V1_L2;
		
		//27P
		P27A_L1.Parameter.Under		:= TRUE;
		P27A_L1.Parameter.Level		:= ProtPar.P27P_L1 * meter.Base.Um / SQRT(3.0);
		P27A_L1.Parameter.Time		:= ProtPar.T27P_L1;
		
		P27B_L1.Parameter := P27C_L1.Parameter := P27A_L1.Parameter;
		
		P27A_L2.Parameter.Under		:= TRUE;
		P27A_L2.Parameter.Level		:= ProtPar.P27P_L2 * meter.Base.Um / SQRT(3.0);
		P27A_L2.Parameter.Time		:= ProtPar.T27P_L2;
		
		P27B_L2.Parameter := P27C_L2.Parameter := P27A_L2.Parameter;
		
		//27PP
		P27AB_L1.Parameter.Under	:= TRUE;
		P27AB_L1.Parameter.Level	:= ProtPar.P27PP_L1 * meter.Base.Um;
		P27AB_L1.Parameter.Time		:= ProtPar.T27PP_L1;
		
		P27BC_L1.Parameter := P27CA_L1.Parameter := P27AB_L1.Parameter;
		
		P27AB_L2.Parameter.Under	:= TRUE;
		P27AB_L2.Parameter.Level	:= ProtPar.P27PP_L2 * meter.Base.Um;
		P27AB_L2.Parameter.Time		:= ProtPar.T27PP_L2;
		
		P27BC_L2.Parameter := P27CA_L2.Parameter := P27AB_L2.Parameter;
		
		//27V1
		P27V1_L1.Parameter.Under	:= TRUE;
		P27V1_L1.Parameter.Level	:= ProtPar.P27V1_L1 * meter.Base.Um / SQRT(3.0);
		P27V1_L1.Parameter.Time		:= ProtPar.T27V1_L1;
		
		P27V1_L2.Parameter.Under	:= TRUE;
		P27V1_L2.Parameter.Level	:= ProtPar.P27V1_L2 * meter.Base.Um / SQRT(3.0);
		P27V1_L2.Parameter.Time		:= ProtPar.T27V1_L2;
		
		//81O
		P81O_L1.Parameter.Under		:= FALSE;
		P81O_L1.Parameter.Level		:= ProtPar.P81O_L1 * meter.Base.Fm;
		P81O_L1.Parameter.Time		:= ProtPar.T81O_L1;
		
		P81O_L2.Parameter.Under		:= FALSE;
		P81O_L2.Parameter.Level		:= ProtPar.P81O_L2 * meter.Base.Fm;
		P81O_L2.Parameter.Time		:= ProtPar.T81O_L2;
				
		//81U
		P81U_L1.Parameter.Under		:= TRUE;
		P81U_L1.Parameter.Level		:= ProtPar.P81U_L1 * meter.Base.Fm;
		P81U_L1.Parameter.Time		:= ProtPar.T81U_L1;
		
		P81U_L2.Parameter.Under		:= TRUE;
		P81U_L2.Parameter.Level		:= ProtPar.P81U_L2 * meter.Base.Fm;
		P81U_L2.Parameter.Time		:= ProtPar.T81U_L2;
		
		//32OP
		P32OP_L1.Parameter.Under	:= FALSE;
		P32OP_L1.Parameter.Level	:= ProtPar.P32OP_L1 * meter.Base.Sm;
		P32OP_L1.Parameter.Time		:= ProtPar.T32OP_L1;
		
		//32UP
		P32UP_L1.Parameter.Under	:= TRUE;
		P32UP_L1.Parameter.Level	:= ProtPar.P32UP_L1 * meter.Base.Sm;
		P32UP_L1.Parameter.Time		:= ProtPar.T32UP_L1;
		
		//32OQ
		P32OQ_L1.Parameter.Under	:= FALSE;
		P32OQ_L1.Parameter.Level	:= ProtPar.P32OQ_L1 * meter.Base.Sm;
		P32OQ_L1.Parameter.Time		:= ProtPar.T32OQ_L1;
		
		//32UQ
		P32UQ_L1.Parameter.Under	:= TRUE;
		P32UQ_L1.Parameter.Level	:= ProtPar.P32UQ_L1 * meter.Base.Sm;
		P32UQ_L1.Parameter.Time		:= ProtPar.T32UQ_L1;
				
		//50P
		P50PA_L1.Parameter.Under	:= FALSE;
		P50PA_L1.Parameter.Level	:= ProtPar.P50P_L1 * meter.Base.Im;
		P50PA_L1.Parameter.Time		:= ProtPar.T50P_L1;
		
		P50PB_L1.Parameter := P50PC_L1.Parameter := P50PA_L1.Parameter;
		
		P50PA_L2.Parameter.Under	:= FALSE;
		P50PA_L2.Parameter.Level	:= ProtPar.P50P_L2 * meter.Base.Im;
		P50PA_L2.Parameter.Time		:= ProtPar.T50P_L2;
		
		P50PB_L2.Parameter := P50PC_L2.Parameter := P50PA_L2.Parameter;
		
		//50Q
		P50Q_L1.Parameter.Under		:= FALSE;
		P50Q_L1.Parameter.Level		:= ProtPar.P50Q_L1 * meter.Base.Im;
		P50Q_L1.Parameter.Time		:= ProtPar.T50Q_L1;
		
		P50Q_L2.Parameter.Under		:= FALSE;
		P50Q_L2.Parameter.Level		:= ProtPar.P50Q_L2 * meter.Base.Im;
		P50Q_L2.Parameter.Time		:= ProtPar.T50Q_L2;
		
		//50G
		P50G_L1.Parameter.Under		:= FALSE;
		P50G_L1.Parameter.Level		:= ProtPar.P50G_L1 * meter.Base.Im;
		P50G_L1.Parameter.Time		:= ProtPar.T50G_L1;
		
		P50G_L2.Parameter.Under		:= FALSE;
		P50G_L2.Parameter.Level		:= ProtPar.P50G_L2 * meter.Base.Im;
		P50G_L2.Parameter.Time		:= ProtPar.T50G_L2;
		
		//51V
		P51VA_L1.Parameter.Ipk		:= ProtPar.P51V_L1 * meter.Base.Im;
		P51VA_L1.Parameter.Td		:= ProtPar.T51V_L1;
		P51VA_L1.Parameter.Vnom		:= meter.Base.Um / SQRT(3.0);
		P51VA_L1.Parameter.Curve	:= REAL_TO_UINT(ProtPar.C51V_L1);
		
		P51VB_L1.Parameter := P51VC_L1.Parameter := P51VA_L1.Parameter;
		
		//51P
		P51PA_L1.Parameter.Ipk		:= ProtPar.P51P_L1 * meter.Base.Im;
		P51PA_L1.Parameter.Td		:= ProtPar.T51P_L1;
		P51PA_L1.Parameter.Vnom		:= 0.0;
		P51PA_L1.Parameter.Curve	:= REAL_TO_UINT(ProtPar.C51P_L1);
		
		P51PB_L1.Parameter := P51PC_L1.Parameter := P51PA_L1.Parameter;
		
		//51Q
		P51Q_L1.Parameter.Ipk		:= ProtPar.P51Q_L1 * meter.Base.Im;
		P51Q_L1.Parameter.Td		:= ProtPar.T51Q_L1;
		P51Q_L1.Parameter.Vnom		:= 0.0;
		P51Q_L1.Parameter.Curve		:= REAL_TO_UINT(ProtPar.C51Q_L1);
		
		//51G
		P51G_L1.Parameter.Ipk		:= ProtPar.P51G_L1 * meter.Base.Im;
		P51G_L1.Parameter.Td		:= ProtPar.T51G_L1;
		P51G_L1.Parameter.Vnom		:= 0.0;
		P51G_L1.Parameter.Curve		:= REAL_TO_UINT(ProtPar.C51G_L1);
		
		//24
		P24_L1.Parameter.HZnom		:= meter.Base.Fm;
		P24_L1.Parameter.Vnom		:= meter.Base.Um;
		P24_L1.Parameter.VHZ		:= ProtPar.P24_L1;
		P24_L1.Parameter.Time		:= ProtPar.T24_L1;
		
		//40
		P40_L1.Parameter.diameter	:= ProtPar.D40_L1;
		P40_L1.Parameter.Offset		:= ProtPar.O40_L1;
		P40_L1.Parameter.Time		:= ProtPar.T40_L1;
		
		P40_L2.Parameter.diameter	:= ProtPar.D40_L2;
		P40_L2.Parameter.Offset		:= ProtPar.O40_L2;
		P40_L2.Parameter.Time		:= ProtPar.T40_L2;
	END_IF;
	 
END_PROGRAM
