# 🔁 1001 Sequence Detector using Moore FSM (Verilog)

> Moore FSM–based sequence detector for identifying the binary pattern `1001` with overlapping detection.

## 📌 Overview
This project implements a **Moore Finite State Machine (FSM)** to detect the binary sequence **`1001`** in a continuous serial input stream. The output is asserted **high only when the FSM reaches the detection state**, ensuring stable and predictable behavior.

## 🧠 Design Approach
- **FSM Model:** Moore Machine  
- **Number of States:** 5 (`S0` – `S4`)  
- **Detection Type:** Overlapping  
- **Output Logic:** State-dependent (Moore logic)  

The Moore model was selected to avoid output glitches and ensure consistency.

## ✨ Features
- Moore FSM with 5 states (`S0–S4`)
- Supports overlapping sequence detection
- Stable, state-based output
- Implemented using **Verilog HDL**
- Verified through simulation testbench

## 🛠 Tools & Technologies
- **Hardware Description Language:** Verilog HDL  
- **Simulation Tool:** Xilinx Vivado  

## 🔄 State Transition Diagram
![State Transition Diagram](docs/state_diagram.png)

The output is asserted only in state `S4`, indicating successful detection of the sequence `1001`.

## 📊 Simulation & Verification
Simulation was performed using a Verilog testbench to verify correct FSM behavior.

**Example:**
Input : 100100110
Output: 000100100

The detector correctly identifies the sequence `1001`, including overlapping occurrences.

![Simulation Waveform](results/simulation_waveform.png)

## 📌 Applications
- Pattern detection in digital communication systems
- Control logic in FSM-based digital controllers
- Building block in VLSI and ASIC designs
- Educational reference for Moore FSM implementation

## 🚀 Future Enhancements
- Implement Mealy FSM and compare detection latency
- Synthesize and test the design on FPGA hardware
- Optimize state encoding for reduced area

## 📁 Project Structure
1001-sequence-detector-verilog/
│
├── src/
│ └── seq_1001.v
│
├── tb/
│ └── seq_1001_tb.v
│
├── docs/
│ └── state_diagram.png
│
├── results/
│ └── simulation_waveform.png
│
└── README.md

## 📎 Notes
- Designed and simulated as part of a digital design / VLSI learning project
- Focused on correctness, clarity, and FSM best practices
