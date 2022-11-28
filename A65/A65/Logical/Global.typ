(*********************************************************************************
 * Copyright: Microsoft
 * Author:    sandrionir
 * Created:   February 21, 2017/7:19 AM 
 *********************************************************************************
 * Global data types of project
 *********************************************************************************)

TYPE
	PgsVersionType : 	STRUCT 
		X : UINT;
		Y : UINT;
		Z : UINT;
	END_STRUCT;
	PgsHW : 	STRUCT 
		TemperatureCPU : UINT;
		TemperatureENV : UINT;
		SerialNumber : UDINT;
		ModuleID : UINT;
		FalhaFonteIO : BOOL;
		Modulos : PgsHWModulos;
	END_STRUCT;
	PgsHWModulos : 	STRUCT 
		X1_Status : USINT;
		A_1_OK : BOOL;
		A_2_OK : BOOL;
		A_3_OK : BOOL;
		A_4_OK : BOOL;
		A_5_OK : BOOL;
		A_6_OK : BOOL;
		A_7_OK : BOOL;
		A_8_OK : BOOL;
		A_9_OK : BOOL;
		A_10_OK : BOOL;
		A_11_OK : BOOL;
		A_12_OK : BOOL;
	END_STRUCT;
END_TYPE
