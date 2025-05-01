# Quantum-Computing-Project

## Project Overview

This project consists of 6 programming exercises in the Q# quantum programming language. To solve these exercises, you'll need to:
1. Install the Azure Quantum Development Kit extension for VS Code
2. Complete the given quantum circuits

Each exercise includes:
- A test function (`Test`)
- An incomplete `Q#` function where you'll implement quantum computing logic

## Learning Resources

### Core Reading (Jonathan Hui's Medium Series):
1. [What is a Quantum Computer?](https://jonathan-hui.medium.com/qc-what-is-a-quantum-computer-222edc3a887d)
2. [What are Qubits?](https://jonathan-hui.medium.com/qc-what-are-qubits-in-quantum-computing-cdb3cb566595)  
3. [Control with Unitary Operators](https://jonathan-hui.medium.com/qc-control-quantum-computing-with-unitary-operators-interference-entanglement-7790c69f6e98)  
4. [Programming with Single-Qubit Gates](https://jonathan-hui.medium.com/qc-programming-with-quantum-gates-8996b667d256)  
5. [Programming with 2-Qubit Operators](https://jonathan-hui.medium.com/qc-programming-with-quantum-gates-2-qubit-operator-871528d136db)  
6. [Quantum Algorithms Explained](https://jonathan-hui.medium.com/qc-quantum-algorithm-with-an-example-cf22c0b1ec31)  

### Additional Resources:
- **Video Lectures**:
  - Quantum Computing for Computer Scientists ([slides](https://www.microsoft.com/en-us/research/uploads/prod/2018/05/40655.compressed.pdf) + [video](https://www.youtube.com/watch?v=F_Riqjdh2oM))
  
  - PBS Infinite Series (YouTube):
    - Mathematics of Quantum Computers
    - Breaking Cryptography
    - Shor's Algorithm Explained

- **Institutional Resources**:

  - [IBM Quantum Experience](https://www.research.ibm.com/ibm-q/)
  - [ Microsoft Quantum Development Kit](https://www.microsoft.com/en-us/quantum/)
  - [UC Berkeley Quantum Lab](https://berkeleyquantum.org/)
  - [University of Waterloo Institute for Quantum Computing](https://uwaterloo.ca/institute-for-quantum-computing/)
  - [Shor's Algorithm Explained](https://www.youtube.com/watch?v=lvTqbM5Dq4Q)
  - [The QuantumCats by Google](https://www.youtube.com/playlist?list=PLQY2H8rRoyvwcpm6Nf-fL4sIYQUXtq3HR)


## Exercises

### 1. Uniform Superposition of All Basis States
**Input**: N qubits in |0...0⟩ state  
**Goal**: Create equal superposition of all 2ᴺ basis states:  

\[|S\rangle = \frac{1}{\sqrt{2^N}} \left( |0...0\rangle + ... + |1...1\rangle \right)\]

**Example (N=2)**:  
\[\frac{1}{2} \left( |00\rangle + |01\rangle + |10\rangle + |11\rangle \right)\]

---

### 2. GHZ State Creation
**Input**: N qubits in |0...0⟩  
**Goal**: Create GHZ state:  

\[|GHZ\rangle = \frac{1}{\sqrt{2}} \left( |0...0\rangle + |1...1\rangle \right)\]

---

### 3. Zero + Basis State Superposition
**Input**: N qubits + binary string ψ (representing a non-zero basis state)  
**Goal**: Create equal superposition of |0...0⟩ and |ψ⟩:  

\[|S\rangle = \frac{1}{\sqrt{2}} \left( |0...0\rangle + |\psi\rangle \right)\]

**Constraint**: First bit of ψ is always 1.

---

### 4. Two-Qubit Entanglement
**Input**: Two qubits  
**Task**: Entangle the qubits and describe the resulting state's properties.

---

### 5. Zero State vs W State Discrimination
**Input**: N qubits  
**Goal**: Determine if the state is |0...0⟩ or W-state:  

\[|W\rangle = \frac{1}{\sqrt{N}} \left( |100...0\rangle + |010...0\rangle + ... + |00...01\rangle \right)\]

---

### 6. Deutsch-Jozsa Algorithm Implementation
**Objective**: Distinguish whether a given N-qubit oracle is:
- **Constant** (always same output) → Return `false`
- **Balanced** (varies by input) → Return `true`

**Quantum Advantage**: Solvable in linear time quantumly vs exponential time classically.

**Implementation Guide**:  
1. Prepare superposition of all input states  
2. Apply oracle  
3. Measure to determine function type

## Development Setup
```bash
# Sample Q# compilation
dotnet build
dotnet test
