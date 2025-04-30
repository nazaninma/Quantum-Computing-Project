namespace QuantumProject {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;
    operation Q1( qbits : Qubit[] ) : Unit{
        //Your Code Here=> last source
        //Hadamard gate =>(H),creating a superposition of all possible states for each qubits.
         
         ApplyToEach(H, qbits);
    }
    @EntryPoint()
    operation Test() : Unit {
        let count = 2;
        use qbits = Qubit[count];
        Q1(qbits);
        DumpMachine();
        for qbit in qbits{
            if (M(qbit) != Zero){
                X(qbit);
            }
        }
    }
}