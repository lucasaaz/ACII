  main:
  # Criar i, que ira fazer a iteracao 4 vezes
    addi t2, zero, 4

  # Salvar em t3
    add t3, zero, zero

    lerT:
    # Le um numero do teclado e armazena em a0
        addi t0, zero, 4   # escolhe a operacao de leitura de inteiro (4)
        ecall              # efetua a operacao de leitura de inteiro

    # Salvar a0 em t1
        add t1, a0, zero

    # Ver se maior
        blt t1, t3, pular

    # Se maior, armazena em t3
        add t3, t1, zero

    # Pular
        pular:

    # Fazer a iteracao 4 vezes, -1
        addi t2, t2, -1
        beq zero, t2, MostrarMaior

  # Se o valor lido for diferente de zero, va para o inicio
  bne t2, zero, lerT

# MostrarMaior
    MostrarMaior:
    # Salvar maior(t3) em a0
        add a0, t3, zero
    # Imprima o valor de a0 na tela
        addi t0, zero, 1   # escolhe a operacao de leitura de inteiro (4)
        ecall              # efetua a operacao de leitura de inteiro

  fim:
  ret