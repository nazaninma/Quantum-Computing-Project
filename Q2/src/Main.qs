namespace QuantumProject {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;

    operation Q2( qs : Qubit[] ) : Unit {
        //Your Code Here 
        let count = Length(qs);
        H(qs[0]);
        for i in 1..(count - 1) {
            CNOT(qs[0], qs[i]);}
        
    }

    @EntryPoint()
    operation Test() : Unit {
        let count = 6;
        use qbits = Qubit[count];
        Q2(qbits);
        DumpMachine();
        for qbit in qbits{
            if (M(qbit) != Zero){
                X(qbit);
            }
        }
    }
}