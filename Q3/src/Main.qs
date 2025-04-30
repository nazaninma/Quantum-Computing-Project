namespace QuantumProject {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;
    operation Q3(qs : Qubit[], bits : Bool[]) : Unit {
        let count = Length(qs); 
        // cnovert to qbit
        for i in 0..(count - 1) {
            if (bits[i]) {
                X(qs[i]);
            }
        }

        X(qs[0]);
        H(qs[0]);
//not sure
        for i in 1..(count - 1) {
            CNOT(qs[0], qs[i]);
        }
    }   
     @EntryPoint()
    operation Test() : Unit {
        let count = 5;
        use qbits = Qubit[count];
        mutable bitString = [true, false, true, true, false];
        Q3(qbits, bitString);
        DumpMachine();
        for qbit in qbits{
            if (M(qbit) != Zero){
                X(qbit);
            }
        }
    }
}