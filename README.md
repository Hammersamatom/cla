# Carry Lookahead Adder

This is a generic, parameterized (sort of), implementation of a carry lookahead adder in Verilog. It's been verified to work up to 32 bits, but nothing beyond that.

### Generic Synth
Command used: ```yosys -p 'synth -top true_cla' true_cla.v```

Equation: 1.52x<sup>2</sup> + 8.27x - 31.8
|XLEN|AND|ANDNOT|NAND|NOR|NOT|ORNOT|XNOR|XOR|Total Cells|
|-|-|-|-|-|-|-|-|-|-|
|1|0|1|1|0|0|1|2|0|5|
|2|3|0|0|4|1|2|3|1|14|
|4|1|1|3|12|2|13|8|3|43|
|8|7|8|1|39|5|50|16|7|138|
|16|10|13|12|153|11|207|32|15|481|
|32|32|39|8|602|30|942|64|30|1784|
|64|62|77|12|2294|64|3945|127|63|6725|
|128|128|151|19|8853|128|15944|256|126|25884|

### ECP5
Command used: ```yosys -p 'synth_ecp5 -top true_cla' true_cla.v```

Equation[^1]: 0.91x<sup>2</sup> + 20x - 298

[^1]: Not entirely accurate, huge margin for error

|XLEN|PFUMX|LUT4|L6MUX21|Total Cells|
|-|-|-|-|-|
|1|0|2|0|2|
|2|2|5|0|7|
|4|4|10|0|14|
|8|12|48|4|64|
|16|35|133|16|184|
|32|222|725|84|1031|
|64|917|3234|286|4437|
|128|3440|13708|1288|18436|
