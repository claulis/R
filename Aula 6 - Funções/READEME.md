#  Funções

As funções são **blocos de código reutilizáveis** que realizam tarefas específicas e podem aceitar entradas, processá-las e produzir saídas.

Em R, você pode definir suas próprias funções usando a seguinte sintaxe:

```R
nome_da_funcao <- function(parametros) {
  # Corpo da função
  # Executa operações
  return(valor)
}
```

 Elementos da definição de função:

- `nome_da_funcao`: Nome que você escolhe para sua função.
- `parametros`: Os valores que podem ser passados para a função.
- `return(valor)`: Declaração opcional que especifica o valor que a função deve retornar.

Vamos criar uma função simples que adiciona dois números:

```R
soma <- function(a, b) {
  resultado <- a + b
  return(resultado)
}
```

### Chamando Funções

Após definir uma função, você pode chamá-la fornecendo os argumentos necessários:

```R
resultado_soma <- soma(5, 3)
print(resultado_soma) # Saída: 8
```

### Parâmetros de Função em R

As funções em R podem ter **parâmetros padrão e parâmetros nomeados**. 
>*Os parâmetros padrão são aqueles que assumem um valor predefinido* caso nenhum valor seja fornecido quando a função é chamada. 
>*Parâmetros nomeados são úteis quando você quer chamar a função e passar argumentos em uma ordem diferente da ordem em que foram definidos na função*.

Vamos criar uma função com um parâmetro padrão:

```R
cumprimento <- function(nome = "Mundo") {
  print(paste("Olá", nome))
}
```

Agora, vamos chamar esta função com e sem fornecer um nome:

```R
cumprimento() # Saída: Olá Mundo
cumprimento("João") # Saída: Olá João
```

### Retornando Valores

Você pode usar a declaração `return()` para retornar um valor específico de uma função. Uma função em R pode retornar qualquer tipo de dado, incluindo vetores, listas e objetos.

Vamos modificar nossa função de soma para retornar o valor:

```R
soma <- function(a, b) {
  resultado <- a + b
  return(resultado)
}
```

Agora, quando chamamos a função, podemos armazenar o resultado em uma variável:

```R
resultado <- soma(5, 3)
print(resultado) # Saída: 8
```

### Exemplo de Função Mais Complexa

Aqui está um exemplo de uma função mais complexa que calcula a média de uma lista de números:

```R
media <- function(valores) {
  soma <- sum(valores)
  tamanho <- length(valores)
  media <- soma / tamanho
  return(media)
}
```

Chamando a função:

```R
valores <- c(2, 4, 6, 8, 10)
resultado_media <- media(valores)
print(resultado_media) # Saída: 6
```
