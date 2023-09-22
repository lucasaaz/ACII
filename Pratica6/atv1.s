main:

    # Le um numero do teclado e armazena em a0
    addi t0, zero, 4   # escolhe a operacao de leitura de inteiro (4)
    ecall              # efetua a operacao de leitura de inteiro

    # Salvar a0 em t1
    add t1, a0, zero

    # Salvar t1 em t2
    add t2, t1, zero

    somarec:
        # Fazer a soma 
        add t3, t3, t2
        add a0, t3, zero
        # Fazer a iteracao n vezes, -1
        addi t2, t2, -1
        # Mostar soma
        addi t0, zero, 1   # escolhe a operacao de leitura de inteiro (4)
        ecall              # efetua a operacao de leitura de inteiro
        # Finalizar funcao
        beq zero, t2, fim

# Se o valor lido for diferente de zero, va para o inicio
bne t2, zero, somarec
fim:
ret