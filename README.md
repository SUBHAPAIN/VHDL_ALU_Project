# VHDL_ALU_Project
# 🔢 8-bit ALU in VHDL with Testbench and XDC Support

This repository contains a complete implementation of an **8-bit Arithmetic Logic Unit (ALU)** in **VHDL**, supporting 16 different arithmetic, logical, and comparison operations. The project is simulated using **Vivado Simulator** and includes a **testbench** as well as a **constraints file (`.xdc`)** for hardware implementation on FPGA boards.

---

## 📌 Features

- 8-bit wide operands (`A`, `B`)
- 4-bit operation selector (`SEL`)
- Output port `Y` (8-bit result)
- `FLAG` output to indicate:
  - Overflow
  - Division by zero
  - Comparison result (equal, greater, less)
- Includes testbench for simulation
- Includes `.xdc` file for real FPGA pin mapping

---

## ⚙️ Supported Operations

| `SEL` Code | Operation        | Description                             |
|------------|------------------|-----------------------------------------|
| `0000`     | ADD              | A + B (with overflow detection)         |
| `0001`     | SUBTRACT         | A - B (with borrow detection)           |
| `0010`     | MULTIPLY         | A × B (lower 8 bits, overflow flag)     |
| `0011`     | DIVIDE           | A ÷ B (division by zero flag)           |
| `0100`     | NOT              | Bitwise NOT of A                        |
| `0101`     | AND              | A AND B                                 |
| `0110`     | OR               | A OR B                                  |
| `0111`     | NAND             | A NAND B                                |
| `1000`     | NOR              | A NOR B                                 |
| `1001`     | XOR              | A XOR B                                 |
| `1010`     | XNOR             | A XNOR B                                |
| `1011`     | INCREMENT        | A + 1                                   |
| `1100`     | DECREMENT        | A - 1                                   |
| `1101`     | EQUALITY CHECK   | FLAG = 1 if A == B                      |
| `1110`     | GREATER CHECK    | FLAG = 1 if A > B                       |
| `1111`     | LESS CHECK       | FLAG = 1 if A < B                       |

---

## 🧪 Testbench

The project includes a comprehensive testbench (`ALU_8bit_tb.vhd`) that:
- Initializes inputs `A`, `B`
- Applies all 16 operations via `SEL`
- Waits between operations using `wait for 10 ns`
- Prints output `Y` and `FLAG` to the simulator console (optional `report`)

> Run behavioral simulation in Vivado to verify the design.

---

## ⛓️ Constraints File (`constraints.xdc`)

The repository includes a sample **Xilinx Design Constraints file** to map your VHDL ports to FPGA pins.

- File: `constraints.xdc`
- You must customize the pin numbers based on your FPGA board (this is xc7s15ftgb196-1).


## 📁 File Structure

├── ALU_8bit.vhd         # Main ALU architecture with 16 operations
├── ALU_8bit_tb.vhd      # Testbench to validate ALU functionality
├── constraints.xdc      # Pin assignment file for FPGA implementation
├── README.md            # Project documentation (this file)
