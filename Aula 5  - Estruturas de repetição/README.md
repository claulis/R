
# Estruturas de Repetição em R

As estruturas de repetição são fundamentais em programação, permitindo executar um bloco de código várias vezes com base em uma condição específica. Em R, temos duas estruturas principais de repetição: `for` e `while`.

## 1. O Loop `for`:
O loop `for` é utilizado quando o número de iterações é conhecido antecipadamente. Sua estrutura básica é a seguinte:

```r
for (variável in sequência) {
    # Bloco de código a ser repetido
}
```

**Exemplos:**
```r
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


```

## 2. O Loop `while`:
O loop `while` é utilizado quando o número de iterações não é conhecido antecipadamente, mas depende de uma condição que deve ser avaliada como verdadeira. Sua estrutura é a seguinte:

```r
while (condição) {
    # Bloco de código a ser repetido
}
```

**Exemplo:**
```r
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

```
## 3. Quando usar `for` e `while`?

Embora que as duas estruturas façam basicmanete a mesma coisa existem algumas caraterísticas que condicionam a utilização.
A tabela em baixo é um resumo:

| Aspecto                    | `for`                                                  | `while`                                                |
|----------------------------|--------------------------------------------------------------|--------------------------------------------------------------|
| Controle de iterações      | Utilizado quando o número de iterações é conhecido antecipadamente. | Utilizado quando o número de iterações não é conhecido antecipadamente, mas depende de uma condição que deve ser avaliada como verdadeira. |
| Inicialização do contador | Normalmente o contador é inicializado diretamente na declaração do loop. | O contador precisa ser inicializado antes do loop e atualizado manualmente dentro do bloco de código. |
| Estrutura                  | Possui uma estrutura mais simples e compacta.                | Possui uma estrutura mais flexível e geralmente requer mais cuidado para evitar loops infinitos. |
| Uso típico                 | Ideal para percorrer sequências ou vetores conhecidos.      | Ideal para situações em que o número de iterações não é conhecido antecipadamente ou para loops baseados em condições. |
| Exemplo                    | Calcular a média de notas em um vetor conhecido.            | Encontrar o valor mínimo de uma sequência até que uma condição seja atendida. |

> Em geral, se você sabe exatamente quantas vezes precisa iterar sobre uma sequência conhecida, o `for` é mais conveniente. Por outro lado, se o número de iterações é desconhecido e depende de uma condição, o `while` é mais apropriado.