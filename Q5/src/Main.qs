namespace QuantumProject {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;

    operation Q5(qs: Qubit[]): Int {
        //Your Code Here
        let count = Length(qs);
        if (M(qs[0]) == One)
        {
                return  1;
        }
        if (M(qs[0]) != Zero){
         for i in 1 .. count - 1 {
             if(M(qs[i]) != Zero) {
                return 1; }
        }}
        
        return  0 ;
        
	}

    @EntryPoint()
    operation Test() : Unit {
        let count = 5;
        use qbits = Qubit[count];
        X(qbits[1]);
        let result = Q5(qbits);
        Message($"Qbit is in State: {result}");
        DumpMachine();
        for qbit in qbits{
            if (M(qbit) != Zero){
                X(qbit);
            }
        }
    }
}