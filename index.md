---
title: FPGA-Based Redundancy Bits Reduction and Error Detection Algorithm
---

# Welcome to the Project Homepage

This GitHub Pages site documents the **FPGA-Based Error Detection** project implemented in Verilog. The goal is to reduce redundancy and enhance error correction in digital communications.

---

## 📘 Overview

> Delay = **L/R + d/c**  
> Digital networks add redundant bits for error detection—but too many of them cause delays.

We implemented and simulated three encoding strategies:
- Hamming Code
- CRC (Cyclic Redundancy Check)
- EEDC (Enhanced Error Detection Code)

📈 The project compares them in terms of:
- Data rate
- Redundancy overhead
- Error detection performance

---

## 📂 Explore the Project

- [📸 Simulation Waveforms](./docs/images/)
- [🧠 Source Code (Verilog)](./src/)
- [📄 README on GitHub](./README.md)

---

## 🔬 Code Preview

Here’s a quick snippet of the Hamming encoder:

```verilog
module hamming_encoder(
    input clk,
    input [7:1] data,
    output reg [11:1] encoded
);
    always @ (posedge clk) begin
        encoded[11]=data[7];
        encoded[10]=data[6];
        encoded[9]=data[5];
        ...
    end
endmodule
