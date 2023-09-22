// R0 pega de R5
@R0
D = M
@R100
M = D
@R5
D = M
@R0
M = D
@R100
D = M
@R5
M = D


// R1 pega de R4
@R1
D = M
@R100
M = D
@R4
D = M
@R1
M = D
@R100
D = M
@R4
M = D

// R2 pega de R3
@R2
D = M
@R100
M = D
@R3
D = M
@R2
M = D
@R100
D = M
@R3
M = D

// FIM
(FIM)
@FIM
0;JMP