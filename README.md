# EEDC Encoder FPGA-Based Redundancy Bits Reduction and Error Detection Algorithm

This project explores techniques to reduce redundancy bits and improve error detection efficiency in digital data transmission using FPGAs. We implemented three encoding schemes—**Hamming Code**, **Cyclic Redundancy Check (CRC)**, and an **Enhanced Error Detection Code (EEDC)**—in Verilog. The goal is to achieve reduced propagation delay and improve data throughput without compromising reliability.

---

## 📌 Problem Definition

In digital systems, to ensure error-free data transmission, redundant bits are added. However, this adds propagation delay:

Delay = L/R + t_prop = L/R + d/c


Where:
- `L` = number of bits in a message  
- `R` = transmission rate  
- `d` = distance between transmitter and receiver  
- `c` = propagation speed  

Excessive delay leads to latency, buffering, and poor user experience.

---

## 💡 Proposed Solution

We propose an **FPGA-based enhanced error detection algorithm** combining Hamming Code, CRC, and a custom Enhanced Error Detection Code (EEDC) that reduces the number of redundant bits without compromising error detection capability.

📊 The approach is validated by:
- Verilog simulation
- Timing waveform analysis
- Data rate and redundancy comparison

---

## 📁 Project Structure
EEDC Encoder/
├── src/
│ ├── hamming/ → Hamming encoder & testbench
│ ├── crc/ → CRC encoder & testbench
│ └── eedc/ → EEDC encoder & testbench
├── results/ → Simulation logs
├── docs/
│ ├── report.md → Full project report (Markdown)
│ └── images/ → Diagrams and waveform screenshots
├── index.md → GitHub Pages landing page
├── README.md → This file


---

## 🔬 Simulated Modules

- ✅ Hamming Encoder (7-bit to 11-bit)
- ✅ CRC Encoder (7-bit with 3-bit generator polynomial)
- ✅ EEDC Encoder (7-bit to 11-bit with 4 parity bits)

---

## 🔗 GitHub Pages

📄 View the full documentation and simulation waveforms here:  
**👉 [Project Report](./docs/report.md)** (or check GitHub Pages once deployed)

---

## 📷 Waveform Previews

> ![Flowchart](./docs/images/fig1_flowchart.png)  
> *Figure 1: Algorithm Flowchart*

> ![Waveform](./docs/images/fig5_hamming_waveform.png)  
> *Figure 5: Hamming Code Simulation*

---

## 🛠️ Tools Used

- Verilog HDL
- FPGA Simulation (Cadence / Icarus / ModelSim)
- GitHub Pages for documentation

