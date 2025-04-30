namespace QuantumProject {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;

    operation Q4(qbit1: Qubit, qbit2: Qubit): Unit {

        H(qbit1);
        CNOT(qbit1, qbit2);
	}
// 00=> up up   // 11=> down down
    @EntryPoint()
    operation Test() : Unit {
        let count = 2;
        use qbits = Qubit[count];
        Q4(qbits[0], qbits[1]);
        DumpMachine();
        for qbit in qbits{
            if (M(qbit) != Zero){
                X(qbit);
            }
        }
    }
}