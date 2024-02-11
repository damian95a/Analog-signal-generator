# Analog signal generator
A purpose of the generator is providing analog signals with SPI DAC. The control interface is Python script that sends instructions to FPGA with UART.
The generator provides curves: sin, abs(sin), triangle and saw. Samples for all the signals are stored in ROM memory and they are being send to DAC with SPI.

![simulation](img/sim.png)

<div align="center">
<img src=img/scope_1.png>
</div>

<br>
The Python interface allows user to choose curve shape, frequency and amplitude of signal.

<div align="center">
    <img src=img/scope_2.png width=45%>
    <img src=img/scope_3.png width=45%>
</div>
<div align="center">
<img src=img/scope_4.png width=45%>
<img src=img/scope_5.png width=45%>
</div>
