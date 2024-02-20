<h1 align="center"> 8-bit-LFSR </h1>
<p align="center"><i>An 8 bit Linear-Feedback Shift Register using OpenLane flow and Skywater130 (RTL to GDS).</i></p>

## Contents
- [Contents](#contents)
- [Project Description](#project-description)
- [Waveform](#waveform)
- [GDS](#gds)

## Project Description
An LFSR is a linear shift-reg with a feedback loop with the characteristic to produce a pseudo random sequence of bits. It's input is driven by a series of taps [7, 6, 5, 4] through a XOR chain.
The possible patern count in this 8-bit LFSR is 2<sup>8</sup>-1.
<img src=img/LFSR_diag.png />

## Waveform
Here you can find the waveform for my testbench.
<img src=img/wave.png />
## GDS
Magic and GDS3D (looks cool) tools for layout visualization of GDS file created by OpenLane flow.
<img src=img/magic.png />
<img src=img/gds3d.png />