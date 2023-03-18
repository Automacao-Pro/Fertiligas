
PROGRAM _CYCLIC

    CB52.st.closed  := CB52.di.closed;
    CB52.st.opened  := NOT CB52.di.closed;
    //Status Fail
    timer( IN := NOT(CB52.di.closed XOR CB52.di.opened), PT := T#3s );
	CB52.st.status_fail := timer.Q;
	
   
END_PROGRAM
