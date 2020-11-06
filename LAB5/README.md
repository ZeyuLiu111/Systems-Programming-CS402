# CS402 - LAB 5 - Memory Issues
## By: Curtis 'CJ' Longoria

<br>

## Q1. Can you see any advantage in working with unaligned data?

An advantage is that unaligned data does not take up as much space in memory.
<br>
|Memory| | Register|
|------|-|---------|
|ef:-:-:-| |ef:-:-:-|
|ef:cd:-:-| |cd:ef:-:-|
|ef:cd:ab:-| |ab:cd:ef:-|
|ef:cd:ab:89| |89:ab:cd:ef|

<br>
<br>

|Memory| | Register|
|------|-|---------:|
|ef:cd:ab:89| |89:ab:cd:ef|
|ef:cd:ab:89| |-:89:ab:cd|
|ef:cd:ab:89| |-:-:89:ab|
|ef:cd:ab:89| |-:-:-:89|

<br>
Extra instructions needed to load an unaligned word = 4
<br>
Extra instructions needed to store an unaligned word = 4
<br>
<br>

## Q2. By how much faster is the application when data is aligned than the same application with unaligned data? Show your work.

<br>
Since each load/store instruction is an extra 4 instructions compared to aligned data and the combined frequency of the load/store instructions is 13% (bytes are not affected), the formula to find the difference in time is:
<br>
<br>
T = aligned program runtime
<br>
x = instruction runtime
<br>
<br>
T_unaligned = T*13%*4x