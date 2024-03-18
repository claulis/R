# Imprimir os números de 1 a 5
for (i in 1:5) {
    print(i)
}


# Definindo o número para a tabuada
numero <- as.integer(readline(prompt = "Digite um número para a tabuada: "))

for (i in 1:10) {
    resultado <- numero * i
    print(paste(numero, "x", i, "=", resultado))
}


# Calculando a média de notas
num_notas <- as.integer(readline(prompt = "Digite o número de notas: "))

soma_notas <- 0

for (i in 1:num_notas) {
    nota <- as.numeric(readline(prompt = paste("Digite a nota", i, ": ")))
    soma_notas <- soma_notas + nota
}

media <- soma_notas / num_notas
print(paste("A média das notas é:", media))


# Definindo o número base e a quantidade de potências
base <- as.integer(readline(prompt = "Digite um número base: "))
num_potencias <- as.integer(readline(prompt = "Digite a quantidade de potências: "))

# Gerando e imprimindo as potências
for (i in 0:(num_potencias-1)) {
    resultado <- base^i
    print(paste(base, "^", i, "=", resultado))
}
