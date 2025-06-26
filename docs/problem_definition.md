Problem Definition
Introduction
In digital communication systems, ensuring the integrity of transmitted data is crucial. To detect and correct errors that may occur during transmission, redundancy bits are added to the original data. However, this addition of redundancy bits increases the overall size of the data packet, which in turn increases the transmission delay.
Delay in Data Transmission
The total delay in transmitting data from the transmitter to the receiver is given by:
[\text{Delay} = \frac{L}{R} + t_{\text{prop}} = \frac{L}{R} + \frac{d}{c}]
Where:

( L ): Total number of bits in the message or packet (including data and redundancy bits).
( R ): Transmission rate of the digital system.
( t_{\text{prop}} ): Time to propagate the signal across the medium.
( d ): Distance between the transmitter and the receiver.
( c ): Propagation speed of the signal.

Effects of Delay
Increased delay can lead to several issues, including:

Increased latency, which affects real-time applications.
Degraded user experience, especially in interactive systems.
Buffering issues in streaming services.
Reduced throughput, as the system spends more time transmitting larger packets.
Impact on real-time applications that require low latency.

Need for Efficient Error Detection
Traditional error detection methods like Hamming Code and Cyclic Redundancy Check (CRC) have their own limitations. Hamming Code requires a significant number of redundancy bits, while CRC may not always provide the best error detection capability for all types of errors. Therefore, there is a need for an enhanced method that can provide better error detection with fewer redundancy bits, thereby reducing the transmission delay.
