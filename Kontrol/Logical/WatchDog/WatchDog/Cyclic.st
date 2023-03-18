
PROGRAM _CYCLIC   
    License();
    ProtFlag.KeyInvalid			:= NOT License.Valid;
    ProtFlag.PwrSrcCpuIOFault	:= HW.FalhaFonteIO;
    ProtFlag.PwrSrcM1IOFault	:= cm0985IO.di.PS24VFault;
	
    IF  License.Valid
    AND	NOT ProtFlag.PwrSrcCpuIOFault	// Power Source CPU I/O Fault
    AND	NOT ProtFlag.PwrSrcM1IOFault	// Power Source Energy Module I/O Fault
    AND	HW.Modulos.A_1_OK
    AND	HW.Modulos.A_2_OK
	AND	HW.Modulos.A_3_OK
//	AND	HW.Modulos.A_4_OK
//	AND	HW.Modulos.A_5_OK
//	AND	HW.Modulos.A_6_OK
//	AND	HW.Modulos.A_7_OK
//	AND	HW.Modulos.A_8_OK
//	AND	HW.Modulos.A_9_OK
//	AND	HW.Modulos.A_10_OK
//	AND	HW.Modulos.A_11_OK
//	AND	HW.Modulos.A_12_OK
	THEN
        WDOK    := TRUE;
    ELSE
        WDOK    := FALSE;   
    END_IF
    
    //WatchDog
    ProtFlag.WatchDog	:= NOT WDOK;
	A65.do.watchdog		:= WDOK;
	    	 
END_PROGRAM
