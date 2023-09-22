  main:
  # Le um numero do teclado e armazena em a0
    addi t0, zero, 4   # escolhe a operacao de leitura de inteiro (4)
    ecall              # efetua a operacao de leitura de inteiro

  # Salvar a0 em t1
    add t1, a0, zero

  # Salvar a0 em s0
    add s0, t1, zero

  # Imprima o valor de a0 na tela
    addi t0, zero, 1   # escolhe a operacao de leitura de inteiro (4)
    ecall              # efetua a operacao de leitura de inteiro  

  # Se o valor lido for diferente de zero, va para o inicio
  bne s0, zero, main
  ret