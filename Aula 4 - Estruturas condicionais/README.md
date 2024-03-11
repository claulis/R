# Estruturas Condicionais em R

As estruturas condicionais em R permitem que você tome decisões em seu código com base em condições específicas. Elas são fundamentais para controlar o fluxo de execução do programa e para tornar seu código mais dinâmico e adaptável a diferentes cenários.

## 1 Tipos de Estruturas Condicionais em R:

1. **if statement:**
   - O `if` é usado para executar um bloco de código se uma condição for verdadeira.

   Exemplo:
   ```R
   x <- 10
   if (x > 5) {
     print("x é maior do que 5")
   }
   ```

2. **if-else statement:**
   - O `if-else` permite que você execute um bloco de código se a condição for verdadeira e outro bloco se a condição for falsa.

   Exemplo:
   ```R
   x <- 3
   if (x > 5) {
     print("x é maior do que 5")
   } else {
     print("x é menor ou igual a 5")
   }
   ```

3. **if-else if-else statement:**
   - O `if-else if-else` permite lidar com múltiplas condições de forma sequencial.

   Exemplo:
   ```R
   x <- 3
   if (x > 5) {
     print("x é maior do que 5")
   } else if (x == 5) {
     print("x é igual a 5")
   } else {
     print("x é menor do que 5")
   }
   ```

4. **switch statement:**
   - O `switch` fornece uma maneira de selecionar um bloco de código com base no valor de uma variável.

   Exemplo:
   ```R
   day <- "Monday"
   switch(day,
          "Monday" = print("É segunda-feira"),
          "Tuesday" = print("É terça-feira"),
          "Wednesday" = print("É quarta-feira"),
          "Thursday" = print("É quinta-feira"),
          "Friday" = print("É sexta-feira"),
          "Saturday" = print("É sábado"),
          "Sunday" = print("É domingo"))
   ```
## 2. Operadores lógicos
Os operadores lógicos em R são fundamentais para realizar operações booleanas, ou seja, avaliar expressões como verdadeiras ou falsas. Aqui estão os principais operadores lógicos em R:

1. **Operador NOT (`!`)**:
O operador NOT inverte o valor de uma expressão lógica. Se uma expressão é verdadeira, o operador NOT a torna falsa, e vice-versa.

   Exemplo:
   ```R
   x <- TRUE
   resultado <- !x
   print(resultado)  # Output: FALSE
   ```
1. **Operadores `and` `or`**

- `&&` (and): Retorna TRUE se ambas as condições forem verdadeiras.
- `||` (or): Retorna TRUE se pelo menos uma das condições for verdadeira.

**Exemplos:**

**Exemplo com `&&` (and):**

```R
# Definindo duas variáveis lógicas
condicao1 <- TRUE
condicao2 <- FALSE

# Verificando se ambas as condições são verdadeiras
if (condicao1 && condicao2) {
  print("Ambas as condições são verdadeiras.")
} else {
  print("Pelo menos uma das condições é falsa.")
}
```

Neste exemplo, a saída será "Pelo menos uma das condições é falsa.", porque `condicao2` é falsa.

**Exemplo com `||` (or):**

```R
# Definindo duas variáveis lógicas
condicao1 <- FALSE
condicao2 <- TRUE

# Verificando se pelo menos uma das condições é verdadeira
if (condicao1 || condicao2) {
  print("Pelo menos uma das condições é verdadeira.")
} else {
  print("Ambas as condições são falsas.")
}
```

Neste exemplo, a saída será "Pelo menos uma das condições é verdadeira.", porque `condicao2` é verdadeira.

3. **Operador XOR (`xor()`)**:
  O operador XOR retorna TRUE se uma e apenas uma das expressões for verdadeira. Retorna FALSE se ambas as expressões forem verdadeiras ou falsas.

   Exemplo:
   ```R
   x <- TRUE
   y <- FALSE
   resultado <- xor(x, y)
   print(resultado)  # Output: TRUE
   ```

4. **Comparadores Relacionais**:
  Além dos operadores lógicos mencionados acima, R também inclui os comparadores relacionais, que são usados para comparar valores.

   Exemplos:
   ```R
   a <- 5
   b <- 10

   resultado <- a < b  # Menor que
   print(resultado)    # Output: TRUE

   resultado <- a == b # Igual a
   print(resultado)    # Output: FALSE

   resultado <- a >= b # Maior ou igual a
   print(resultado)    # Output: FALSE
   ```


