  main:
  # Criar i, que ira fazer a iteracao 10 vezes
    addi t2, zero, 1

  # Le um numero do teclado e armazena em a0
    addi t0, zero, 4   # escolhe a operacao de leitura de inteiro (4)
    ecall              # efetua a operacao de leitura de inteiro

  # Salvar a0 em t1
    add t1, a0, zero

  # Salvar a0 em s0
    add s0, t1, zero

  # Se 0 nao mostrar
    beq s0, zero, pular

  # Imprima o valor de a0 na tela
    addi t0, zero, 1   # escolhe a operacao de leitura de inteiro (4)
    ecall              # efetua a operacao de leitura de inteiro

  # Fazer a iteracao 10 vezes, -1
    addi t2, t2, -1
    bge zero, t2, fim 

  # Se o valor lido for diferente de zero, va para o inicio
  pular:
  bne s0, zero, main
  fim:
  ret