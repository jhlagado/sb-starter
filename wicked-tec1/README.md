## A TEC-1 emulation in JavaScript

In the summer of 1983, Ken Stone and myself designed the TEC-1, a rudimentary Z80-based computer
designed to teach people about microprocessors and programming in general. Ken and I built the prototypes,
programmed the ROMs and prepared the kit for publication in a small Australian electronics magazine.

35 years later, interest in this kit has remained strong and I recently decided to
revisit this old design and think about ways that it might still be relevant.

There have been a couple of emulations of the TEC-1 over the years. I wondered whether
a good enough one could be written in JavaScript and run directly in a browser. It turns out
that, yes, you most certainly can. You can see the result of my experimentation, a live working version of the TEC-1 [running right here](https://jhlagado.github.io/wicked-tec1)

### Resources
- [An annotated disassembly of the TEC-1 ROMS](https://github.com/jhlagado/TEC-1)
- [Introducing the TEC-1 early 1983](http://www.talkingelectronics.com/TE-1-15_pdfs/TE-Issue10.pdf)

### Things left ToDo

[![Build Status](https://travis-ci.org/jhlagado/wicked-tec1.svg?branch=master)](https://travis-ci.org/jhlagado/wicked-tec1)