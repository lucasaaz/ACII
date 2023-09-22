// Pegar valor de R1
@R1
D = M

// Ver se R1 eh 0
@AQUI
D;JEQ

// Se != 0
@R0
M = 0
@FIM
0;JMP

// Se == 0
(AQUI)
@R0
M = 1

// FIM
(FIM)
@FIM
0;JMP