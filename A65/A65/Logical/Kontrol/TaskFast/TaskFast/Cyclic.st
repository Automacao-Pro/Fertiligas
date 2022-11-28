
PROGRAM _CYCLIC
	
    //Uf : Field Voltage
    uf_filter( IN := INT_TO_REAL(A65.ai.uf) );
    UfAvg   := uf_filter.OUT;
    //If : Field Voltage
    if_filter( IN := INT_TO_REAL(A65.ai.if) );
    IfAvg   := if_filter.OUT;    
 
END_PROGRAM
