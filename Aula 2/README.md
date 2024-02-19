# 1. Variáveis em R 

## 1.1 O que são Variáveis?
   - Variáveis são como "caixas" ou "recipientes" que armazenam dados dentro de um programa de computador.
   - Elas nos permitem armazenar e manipular diferentes tipos de informações, como números, textos, valores lógicos, entre outros.

## 1.2 Para que Servem as Variáveis?
   - As variáveis desempenham um papel crucial na programação, pois nos ajudam a armazenar e acessar dados de forma organizada e eficiente.
   - Permitem-nos trabalhar com dados dinâmicos, ou seja, dados que podem mudar durante a execução do programa.

## 1.3 Como Funcionam as Variáveis em Geral?

Do ponto de vista computacional, uma variável **é um espaço na memória do computador que é reservado para armazenar um valor específico**. Quando declaramos uma variável em um programa, o computador aloca um endereço de memória para armazenar esse valor e associa um nome a esse endereço. Quando nos referimos ao nome da variável em nosso programa, o computador entende que estamos nos referindo ao valor armazenado nesse endereço de memória.

Quando **atribuímos** um valor a uma variável, estamos efetivamente **armazenando esse valor na memória do computador**. Por exemplo, se declaramos uma variável chamada "idade" e atribuímos o valor 25 a ela, o computador reserva um espaço na memória, armazena o valor 25 nesse espaço e associa o nome "idade" a esse espaço de memória.

Ao longo do programa, podemos acessar e manipular o valor armazenado na variável "idade". Por exemplo, podemos exibir o valor, realizar cálculos com ele, ou mesmo alterá-lo atribuindo um novo valor à variável.

É importante notar que diferentes tipos de dados ocupam diferentes quantidades de espaço na memória do computador. Por exemplo, um número inteiro pode ocupar menos espaço do que um número decimal de ponto flutuante. Além disso, os tipos de dados também determinam como os valores são interpretados e tratados pelo computador durante as operações. 

### 1.3.1 Exemplo do funcionamento
   - Para entender melhor, imagine que estamos criando um programa para calcular a média de notas de um aluno.
   - Podemos criar variáveis como "nota1", "nota2" e "media" para armazenar as notas e o resultado do cálculo da média.
   - Essas variáveis nos ajudam a manter as notas organizadas e facilitam o cálculo da média.
  
# 2. Variáveis em R

## 2.1 Declaração Variáveis em R

Em R, você pode declarar uma variável **atribuindo** um valor a ela. Não é necessário especificar o tipo de dado da variável, pois R é uma linguagem de *tipagem dinâmica*.

```R
# Exemplo de declaração de variáveis em R
idade <- 25
nome <- "João"
altura <- 1.75
```

Neste exemplo:
- `idade` é uma variável que armazena um número inteiro.
- `nome` é uma variável que armazena um texto (string).
- `altura` é uma variável que armazena um número decimal.

> :warning: Em R é possível declarar uma variável sem inicializá-la imediatamente*. Isso significa que você pode criar uma variável e atribuir um valor a ela posteriormente no código. 

Veja um exemplo:

```R
# Declaração da variável sem inicialização
idade <- NULL

# Posteriormente, podemos atribuir um valor à variável
idade <- 25
```

Neste exemplo, inicializamos a variável `idade` com o valor `NULL` e, em seguida, atribuímos o valor `25` a ela. Isso é útil quando você precisa criar uma variável que será inicializada posteriormente com um valor específico, talvez após a realização de alguma operação ou leitura de dados.

No entanto, é importante notar que, em muitas situações, é uma boa prática inicializar as variáveis no momento da declaração, especialmente quando você sabe qual será o valor inicial. Isso pode tornar seu código mais claro e menos propenso a erros.

## 2.2 Manipulação de Variáveis em R

Após declarar as variáveis, podemos manipulá-las de várias maneiras, realizando operações e atribuições:

```R
# Exemplo de manipulação de variáveis em R
idade <- idade + 1  # Incrementa a idade em 1
nome <- paste(nome, "Silva")  # Concatena "Silva" ao nome
altura <- altura * 100  # Converte altura de metros para centímetros
```

Neste exemplo:
- `idade` é incrementada em 1.
- O sobrenome "Silva" é concatenado ao `nome`.
- A `altura` é multiplicada por 100 para converter de metros para centímetros.

## 2.3 Impressão de Variáveis em R

Podemos imprimir o valor das variáveis para verificar as alterações realizadas:

```R
# Exemplo de impressão de variáveis em R
print(idade)  # Imprime a idade atual
print(nome)   # Imprime o nome completo
print(altura) # Imprime a altura em centímetros
```

**Saída:**
```
[1] 26
[1] "João Silva"
[1] 175
```

Além de exibir valores na saída padrão, a função `print()` em R possui algumas características que valem a pena mencionar:

1. **Formatação Automática:**
   - A função `print()` em R formata automaticamente os valores para exibição. Isso significa que, dependendo do tipo de dado, a saída pode ser formatada de maneira apropriada. Por exemplo, strings são exibidas com aspas, números são exibidos sem aspas, etc.

2. **Exibição de Vetores e Matrizes:**
   - Quando você passa um vetor ou matriz como argumento para `print()`, os elementos são exibidos em formato de lista, linha por linha. Isso facilita a visualização de dados estruturados.

3. **Controle de Saída:**
   - A função `print()` pode ser usada para controlar o formato da saída. Por exemplo, você pode usar a função `cat()` dentro de `print()` para imprimir valores sem formatação adicional, ou pode incluir quebras de linha, tabulações, etc., conforme necessário.

4. **Retorno de Valores:**
   - A função `print()` retorna o valor que foi impresso na tela. Isso significa que você pode usá-la dentro de expressões e atribuições. No entanto, é importante notar que ela retorna o valor invisivelmente, o que significa que normalmente você não verá o retorno a menos que explicitamente solicite.

Por exemplo, considere o seguinte código:

```R
# Uso de print dentro de uma expressão
x <- 10
y <- print(x * 2)

# O valor de y será 20, mas não será exibido a menos que seja explicitamente solicitado
y
```

A função `print()` é uma ferramenta fundamental para visualização de dados e depuração em R. Ela fornece uma maneira simples e eficaz de exibir informações durante a execução do seu código, ajudando a entender o que está acontecendo e a identificar possíveis problemas.

# 3. Tipos de dados em R

Em R, existem diversos tipos de dados que podem ser utilizados para armazenar informações de diferentes naturezas. Vou explicar alguns dos tipos de dados mais comuns em R, juntamente com exemplos de como eles podem ser usados:

1. **Numérico (numeric):**
   - Armazena números inteiros ou decimais.
   
   Exemplo:
   ```R
   idade <- 25
   altura <- 1.75
   ```

2. **Caractere (character):**
   - Armazena texto, strings de caracteres.
   
   Exemplo:
   ```R
   nome <- "Maria"
   sobrenome <- 'Silva'
   ```

3. **Lógico (logical):**
   - Armazena valores lógicos: TRUE (verdadeiro) ou FALSE (falso).
   
   Exemplo:
   ```R
   tem_carro <- TRUE
   tem_casa <- FALSE
   ```

4. **Fator (factor):**
   - É utilizado para representar variáveis categóricas com um número finito de valores.
   
   Exemplo:
   ```R
   genero <- factor(c("masculino", "feminino", "feminino", "masculino"))
   ```

5. **Vetor (vector):**
   - Um vetor é uma sequência ordenada de elementos do mesmo tipo.
   
   Exemplo:
   ```R
   numeros <- c(1, 2, 3, 4, 5)
   ```

6. **Lista (list):**
   - Uma lista é um conjunto ordenado de elementos, que podem ser de tipos diferentes.
   
   Exemplo:
   ```R
   dados <- list(nome = "João", idade = 30, altura = 1.80)
   ```

7. **Matriz (matrix):**
   - Uma matriz é uma estrutura bidimensional que contém elementos do mesmo tipo.
   
   Exemplo:
   ```R
   matriz <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
   ```

8. **Dataframe (data.frame):**
   - Um dataframe é uma estrutura tabular que contém linhas e colunas, semelhante a uma tabela de banco de dados.
   
   Exemplo:
   ```R
   dataframe <- data.frame(nome = c("Ana", "Carlos", "Mariana"),
                           idade = c(25, 30, 28),
                           altura = c(1.65, 1.80, 1.70))
   ```

ok? :thumbsup:
tmj :punch:


