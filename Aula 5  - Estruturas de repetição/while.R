# Imprimir os números de 1 a 5 usando while
i <- 1
while (i <= 5) {
    print(i)
    i <- i + 1
}

# Definindo o número para a tabuada
numero <- as.integer(readline(prompt = "Digite um número para a tabuada: "))
i <- 1 # Inicializando o contador
while (i <= 10) {
    resultado <- numero * i
    print(paste(numero, "x", i, "=", resultado))
    i <- i + 1
}

# Número de notas
num_notas <- as.integer(readline(prompt = "Digite o número de notas: "))

soma_notas <- 0 # Inicializando a variável para armazenar a soma das notas e o contador
i <- 1

while (i <= num_notas) {
    nota <- as.numeric(readline(prompt = paste("Digite a nota", i, ": ")))
    soma_notas <- soma_notas + nota
    i <- i + 1
}

media <- soma_notas / num_notas
print(paste("A média das notas é:", media))

# Definindo o número base e a quantidade de potências
base <- as.integer(readline(prompt = "Digite um número base: "))
num_potencias <- as.integer(readline(prompt = "Digite a quantidade de potências: "))

i <- 0 # Inicializando o contador

# Gerando e imprimindo as potências
while (i < num_potencias) {
    resultado <- base^i
    print(paste(base, "^", i, "=", resultado))
    i <- i + 1
}
