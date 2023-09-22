main:
    addi t0, zero, 4   # escolhe a operacao de leitura de inteiro (4)
    ecall              # efetua a operacao de leitura de inteiro

    add t1, a0, zero

    addi t0, zero, 4   # escolhe a operacao de leitura de inteiro (4)
    ecall              # efetua a operacao de leitura de inteiro

    add a0, a0, t1

    addi t0, zero, 1   # escolhe a operacao de escrita de inteiro (1)
    ecall              # efetua a operacao de escrita de inteiro

    ret