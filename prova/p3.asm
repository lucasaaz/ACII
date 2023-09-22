@R0        //Pegar o valor de R0
D = M

@R1        //Pegar o valor de R1
D = D - M

@FIM       //Se A & B == 0
D;JEQ

@R0         //Pegar R0
D = M
@R1
D = D - M   //Comparar com R1, se > 0 entao R0 > R1

@AQUI
D;JGT

// Se R0 > R1
@2          //Pegar valor 2
D = A
@R0
M = M + D  //Somar 2 ao valor que esta em R0
@0         //volta para o while
0;JMP

// Se R1 > R0
(AQUI)
@1             //Pegar valor 1
D = A
@R1
M = M + D      //Somar 1 ao valor que esta em R1
@0             //volta para a condicao n = 0
0;JMP

// FIM
(FIM)
@FIM
0;JMP