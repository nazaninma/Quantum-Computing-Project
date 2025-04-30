namespace QuantumProject {
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Arrays;
    operation Q6(SampleFunction : ((Qubit[]) => Unit), n: Int) : Bool {
        use qubit= Qubit[n];
        X(qubit[n-1]);
        ApplyToEach(H, qubit);

        SampleFunction(qubit);

        for i in 0 .. n-2{
            H(qubit[i]);
        }
        for i in 0 .. n-1
        {
            if M(qubit[i] )== One
            {
                return false;
            }
        }
        return true;

        
    }



  
    @EntryPoint()
    operation Test() : Unit {
        let count = 3;
        use qbits = Qubit[count];
        use oracle = Qubit();
        // let sampleFunction1 = (qbits) => {
        //         H(qbits[0]);
        //         CNOT(qbits[1], qbits[0]);
        //         H(qbits[0]);
        //     };
        // let funciton = sampleFunction1;
        let sampleFunction2 = (qbits) => ();
        let funciton = sampleFunction2;
        let result = Q6(funciton, count);
        Message($"your function type is: {result}");
        DumpMachine();
        for qbit in qbits{
            if (M(qbit) != Zero){
                X(qbit);
            }
        }
    }
}