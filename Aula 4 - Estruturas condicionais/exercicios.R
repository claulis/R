#Verificando se numero é positivo

numero <- as.numeric(readline(prompt="Digite um número: "))

if (numero > 0) {
  print("O número é positivo.")
} else if (numero < 0) {
  print("O número é negativo.")
} else {
  print("O número é zero.")
}

#Verificando se numero é divisivel por 2 ou 3
numero <- as.numeric(readline(prompt="Digite um número: "))

if (numero %% 2 == 0 && numero %% 3 == 0) {
  print("O número é divisível por 2 e por 3.")
} else if (numero %% 2 == 0) {
  print("O número é divisível por 2, mas não por 3.")
} else if (numero %% 3 == 0) {
  print("O número é divisível por 3, mas não por 2.")
} else {
  print("O número não é divisível por 2 nem por 3.")
}

#Verificando tipo de triangulo
lado1 <- as.numeric(readline(prompt="Digite o comprimento do primeiro lado: "))
lado2 <- as.numeric(readline(prompt="Digite o comprimento do segundo lado: "))
lado3 <- as.numeric(readline(prompt="Digite o comprimento do terceiro lado: "))

if (lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1) {
  if (lado1 == lado2 && lado2 == lado3) {
    print("O triângulo é equilátero.")
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print("O triângulo é isósceles.")
  } else {
    print("O triângulo é escaleno.")
  }
} else {
  print("Não é possível formar um triângulo com esses comprimentos de lado.")
}


#Peça ao usuário para inserir uma nota de 0 a 10. 
#Crie um programa que utilize a estrutura switch para converter a nota em um conceito, seguindo a escala tradicional de A a F.
#Se a nota estiver entre 9 e 10, o conceito é A.
#Se a nota estiver entre 7 e 8.9, o conceito é B.
#Se a nota estiver entre 5 e 6.9, o conceito é C.
#Se a nota estiver entre 4 e 4.9, o conceito é D.
#Se a nota estiver entre 0 e 3.9, o conceito é F.
nota <- as.numeric(readline(prompt="Digite a nota (0 a 10): "))

conceito <- switch(trunc(nota),
                   "A" = if (nota >= 9) "A",
                   "B" = if (nota >= 7) "B",
                   "C" = if (nota >= 5) "C",
                   "D" = if (nota >= 4) "D",
                   "F" = "F")

print(paste("Conceito:", conceito))

