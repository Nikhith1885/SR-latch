# SR-latch
Verilog implementation of an SR Latch with testbench demonstrating basic sequential logic behavior.

# SR Latch in Verilog

This project contains the **Verilog implementation and testbench** of an **SR (Set-Reset) Latch**, a fundamental sequential logic circuit.

## 📘 Overview
An SR Latch is a basic **bistable circuit** built using cross-coupled NAND gates.  
It can store **one bit of information** and operates as follows:

- **S = 0, R = 0 → Hold (previous state retained)**  
- **S = 0, R = 1 → Reset (Q = 0, Q̅ = 1)**  
- **S = 1, R = 0 → Set (Q = 1, Q̅ = 0)**  
- **S = 1, R = 1 → Invalid state (both outputs = 0, not allowed)**  

## ⚡ Features
- Verilog HDL code for SR Latch
- Testbench for simulation
- Easy to run on **Vivado, ModelSim, or Icarus Verilog**

## 📝 Files
- `sr_latch.v` → Verilog module for SR Latch  
- `tb_sr_latch.v` → Testbench for simulation  

## 🖥️ Simulation
Run the testbench using any Verilog simulator:

```sh
iverilog -o sr_latch_tb sr_latch.v tb_sr_latch.v
vvp sr_latch_tb
| S | R | Q | Q̅ | Description       |
| - | - | - | -- | ----------------- |
| 0 | 0 | Q | Q̅ | Hold (no change)  |
| 0 | 1 | 0 | 1  | Reset             |
| 1 | 0 | 1 | 0  | Set               |
| 1 | 1 | 0 | 0  | Invalid condition |
