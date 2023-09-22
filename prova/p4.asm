@R1         //Pegar valor de R1
D = M

@R2         //Comparar com R2, se < 0 entao R1 eh o resto da divisao
D = D - M

@MENOR      //Se < 0
D;JLT

@R1         //Pegar R1
D = M

(VOLTAR)   
@R10        //Salvar R1 em R10
M = D

@R2         //Pegar R2
D = M

@R10        //Salvar em R10 o valor atual de R10 - R2  (divisão)
M = M - D

@R10        //Pegar R10
D = M 

@R2         //Acessar R2, Ver se R10 eh menor que R2, se R10 < R2 parar a divisão
D = D - M

@AQUI       //Se < 0
D;JLT

@VOLTAR     //Volta para continuar a divisao, pois ainda nao acabou           
0;JMP

(MENOR)     //R1 eh o resto da divisao
@R1         //Pegar R1
D = M
@R0         //Salvar R1 em R0
M = D
@FIM
0;JMP

(AQUI)      //Acabou a divisao
@R10        //Pegar R10
D = M
@R0         //Salvar R10 em R0
M = D

// FIM
(FIM)
@FIM
0;JMP