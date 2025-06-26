# EEDC Encoder Project

Welcome to the EEDC Encoder project repository. This project focuses on implementing an Enhanced Error Detection and Correction (EEDC) Encoder to reduce redundancy bits in digital communication systems, addressing the limitations of traditional methods like Hamming Code and Cyclic Redundancy Check (CRC).

## Project Overview

- **Problem**: In digital communication, adding redundancy bits for error detection increases transmission delay, which can lead to issues like increased latency, degraded user experience, and reduced throughput.
- **Solution**: The EEDC algorithm combines the strengths of Hamming Code and CRC while minimizing the number of redundancy bits, thereby reducing transmission delay.
- **Implementation**: The project includes Verilog implementations of Hamming, CRC, and EEDC encoders, along with their test benches and simulation results.

## Documentation

- [Problem Definition](problem_definition.md)
- [Solution and Algorithm](solution.md)
- [Results and Simulations](results.md)
- [Conclusion](conclusion.md)

## Quick Start

1. Clone the repository: `git clone https://github.com/your-username/EEDC-Encoder.git`
2. Open the `src/` directory to find the Verilog modules.
3. Run the test benches in `test/` to verify the functionality.

## Images

- [Flowchart of the Algorithm](images/flowchart.png)
- [Code Generator Architecture](images/architecture.png)
- [Data Rate Comparison](images/data_rate_comparison.png)
- [Error Detection Performance](images/error_detection.png)
- [Simulation Waveforms](images/hamming_waveform.png), [CRC Waveform](images/crc_waveform.png), [EEDC Waveform](images/eedc_waveform.png)
