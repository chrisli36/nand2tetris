// push argument 1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D
// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 0
@SP
M=M-1
@THAT
D=M
@0
D=D+A
@R13
M=D
@SP
A=M
D=M
@R13
A=M
M=D
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// pop that 1
@SP
M=M-1
@THAT
D=M
@1
D=D+A
@R13
M=D
@SP
A=M
D=M
@R13
A=M
M=D
// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1
// pop argument 0
@SP
M=M-1
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
A=M
D=M
@R13
A=M
M=D
// label MAIN_LOOP_START
(FibonacciSeries.null$MAIN_LOOP_START)
// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// if-goto COMPUTE_ELEMENT
@SP
AM=M-1
D=M
@FibonacciSeries.null$COMPUTE_ELEMENT
D; JNE
// goto END_PROGRAM
@FibonacciSeries.null$END_PROGRAM
0; JMP
// label COMPUTE_ELEMENT
(FibonacciSeries.null$COMPUTE_ELEMENT)
// push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// push that 1
@THAT
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1
// pop that 2
@SP
M=M-1
@THAT
D=M
@2
D=D+A
@R13
M=D
@SP
A=M
D=M
@R13
A=M
M=D
// push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// add
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M+D
@SP
M=M+1
// pop pointer 1
@SP
M=M-1
@SP
A=M
D=M
@THAT
M=D
// push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// sub
@SP
AM=M-1
D=M
@SP
AM=M-1
M=M-D
@SP
M=M+1
// pop argument 0
@SP
M=M-1
@ARG
D=M
@0
D=D+A
@R13
M=D
@SP
A=M
D=M
@R13
A=M
M=D
// goto MAIN_LOOP_START
@FibonacciSeries.null$MAIN_LOOP_START
0; JMP
// label END_PROGRAM
(FibonacciSeries.null$END_PROGRAM)
(END)
@END
0;JMP