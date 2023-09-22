main:

    ler:
        # Le um numero do teclado e armazena em a0
        addi t0, zero, 4   # escolhe a operacao de leitura de inteiro (4)
        ecall              # efetua a operacao de leitura de inteiro

        # Salvar a0 em t2
        add t2, a0, zero

        # Ver se eh par
        andi t3, t2, 0x00000001
        bne t3, zero, pular

        # Somar pares
        add t5, t5, t2

        pular:

        # Finaliza funcao ler
        bne t2, zero, ler

    # Fazer a iteracao n vezes, -1
    beq zero, t2, MostarSoma 

MostarSoma:
add a0, t5, zero
addi t0, zero, 1   # escolhe a operacao de leitura de inteiro (4)
ecall              # efetua a operacao de leitura de inteiro

ret