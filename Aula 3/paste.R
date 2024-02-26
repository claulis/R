#Exemplo 1
nome <- "Alice"
sobrenome <- "Silva"
nome_completo <- paste(nome, sobrenome)
print(nome_completo) # Saída: "Alice Silva"

#Exemplo 2
valor_moeda <- 100
moeda <- "BRL"
valor_formatado <- paste(valor_moeda, moeda, sep = " ")
print(valor_formatado) # Saída: "100 BRL"

#Exemplo 3
frutas <- c("maçã", "banana", "laranja")
frutas_juntas <- paste(frutas) 
print(frutas_juntas) # Saída: "maçã banana laranja"
frutas_separadas <- paste(frutas, collapse = ", ")
print(frutas_separadas) # Saída: "maçã, banana, laranja"