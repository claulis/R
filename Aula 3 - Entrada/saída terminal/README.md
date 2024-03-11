# Entrada e saída de dados no Terminal

## Entrada de dados

## Inserir dados via terminal em um programa R

**1. Usando a função `readline()`:**

A função `readline()` lê uma única linha do terminal e retorna-a como uma string.

**Exemplo:**

```R
# Ler uma string do terminal
nome <- readline(prompt = "Digite seu nome: ")
```
## Saída de dados

## Print() com template Strings

Template strings são strings literais que podem conter expressões R. As expressões R são avaliadas e os resultados são inseridos na string.

## Função paste() 

A função `paste()` em R serve para **concatenar** (juntar) elementos, principalmente **strings** (textos), em um único vetor de caracteres. 

### Sintaxe:

```R
paste(objeto1, objeto2, ..., sep = "", collapse = "")
```

- **objeto1, objeto2, ...**: elementos a serem concatenados (podem ser strings, números, vetores, etc.).
- **sep (opcional)**: caractere separador inserido entre cada elemento concatenado. Por padrão, é um espaço (" ").
- **collapse (opcional)**: caractere separador para juntar os elementos do resultado em um único elemento. Por padrão, é vazio ("").

### Exemplos:

1. **Concatenando strings:**

```R
nome <- "Alice"
sobrenome <- "Silva"
nome_completo <- paste(nome, sobrenome)
print(nome_completo) # Saída: "Alice Silva"
```

2. **Concatenando strings com separador personalizado:**

```R
valor_moeda <- 100
moeda <- "BRL"
valor_formatado <- paste(valor_moeda, moeda, sep = " ")
print(valor_formatado) # Saída: "100 BRL"
```

3. **Concatenando elementos de um vetor:**

```R
frutas <- c("maçã", "banana", "laranja")
frutas_juntas <- paste(frutas) 
print(frutas_juntas) # Saída: "maçã banana laranja"
frutas_separadas <- paste(frutas, collapse = ", ")
print(frutas_separadas) # Saída: "maçã, banana, laranja"
```

## Função paste0() em R

A função `paste0()` em R é usada para concatenar strings. Exuste outra função semelhante, a `paste()`, mas com algumas diferenças importantes:

* **Separação:** `paste0()` não usa separador por padrão. As strings são concatenadas sem nenhum espaço entre elas.
* **Eficiência:** `paste0()` é geralmente mais eficiente que `paste()` quando você não precisa de um separador.
* **Controle:** `paste0()` oferece mais controle sobre a formatação da saída.

### Sintaxe básica

A sintaxe básica da função `paste0()` é a seguinte:

```R
paste0(string1, string2, ..., stringn)
```

Onde `string1`, `string2`, ..., `stringn` são as strings a serem concatenadas.

### Exemplos

**Exemplo 1:** Concatenar duas strings

```R
str1 <- "Olá"
str2 <- "mundo!"
str_concat <- paste0(str1, str2)
print(str_concat)
```

**Exemplo 2:** Concatenar uma string e uma variável

```R
nome <- "João"
str_concat <- paste0("Olá, ", nome, "!")
print(str_concat)
```

**Exemplo 3:** Concatenar strings com formatação

```R
valor <- 100
str_concat <- paste0("Valor: ", format(valor, currency = "BRL"))
print(str_concat)
```

**Exemplo 4:** Imprimir a data e hora atual

```R
data_hora <- Sys.time()
str_template <- paste0("Data e hora: ", date_hora, sep = "")
print(str_template)
```
**Exemplo 5:**  Formatar um número com casas decimais
```R
numero <- 3.14159
str_template <- paste0("Número com duas casas decimais: ", round(numero, 2), sep = "")
print(str_template)
```

## Diferenças entre paste() e paste0()

| Característica | paste() | paste0() |
|---|---|---|
| Separação | Usa espaço por padrão | Não usa separador por padrão |
| Eficiência | Menos eficiente | Mais eficiente |
| Controle | Menos controle sobre a formatação | Mais controle sobre a formatação |

### Quando usar paste0()?

Você deve usar `paste0()` quando:

* Você não precisa de um separador entre as strings.
* Você deseja concatenar strings e variáveis.
* Você deseja ter mais controle sobre a formatação da saída.





