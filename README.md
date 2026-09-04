# 🚦 Traffic Light Controller using Verilog HDL

A **Traffic Light Controller** designed using **Verilog HDL** and simulated using **Xilinx ISE / ISim**.

## 📌 Project Overview

This project implements a simple traffic light controller using a **Finite State Machine (FSM)**.

The controller operates through three states:

- 🔴 **S0 → Red**
- 🟢 **S1 → Green**
- 🟡 **S2 → Yellow**

The states continuously cycle in the following sequence:

``text
RED → GREEN → YELLOW → RED

## ⚙️ State Transition

| Current State | Output    | Next State |
| ------------- | --------- | ---------- |
| `S0`          | 🔴 Red    | `S1`       |
| `S1`          | 🟢 Green  | `S2`       |
| `S2`          | 🟡 Yellow | `S0`       |

he reset input returns the controller to the S0 (Red) state.

## 🔌 Inputs and Outputs
Inputs
clk – Clock signal
reset – Active-high reset signal
Outputs
red – Red traffic light
green – Green traffic light
yellow – Yellow traffic light

## 🧠 FSM Design

The controller consists of three states:

        ┌─────────┐
        │         ▼
     ┌─────┐   ┌───────┐
     │ RED │──►│ GREEN │
     │ S0  │   │  S1   │
     └─────┘   └───────┘
        ▲          │
        │          ▼
        │      ┌────────┐
        └──────│ YELLOW │
               │   S2   │
               └────────┘
## 🧪 Simulation

The design was simulated using Xilinx ISE / ISim.

The testbench generates a clock signal with a 10 ns period and applies an initial reset to the controller.

Expected Sequence
Reset → RED → GREEN → YELLOW → RED → ...

## 📊 Simulation Waveform

The simulation waveform demonstrates the correct state transitions and corresponding traffic light outputs.

##🛠️ Tools Used
Verilog HDL
Xilinx ISE
ISim
Finite State Machine (FSM)
Digital Logic Design

## 📁 Project Structure
traffic-light-controller-verilog/
│
├── simulation/
│   └── waveform.png
│
├── src/
│   └── traffic_light.v
│
├── testbench/
│   └── traffic_light_tb.v
│
└── README.md

## 🎯 Learning Outcomes
Understanding Finite State Machines (FSM)
Verilog HDL programming
Sequential and combinational logic
State transition design
Testbench development
RTL simulation
Waveform analysis using Xilinx ISim

## 👨‍💻 Author

YOKESH R


