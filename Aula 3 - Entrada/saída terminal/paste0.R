#Exemplo 1
str1 <- "Olá"
str2 <- "mundo!"
str_concat <- paste0(str1, str2)
print(str_concat)


#Exemplo 2
nome <- "João"
str_concat <- paste0("Olá, ", nome, "!")
print(str_concat)


#Exemplo 3
valor <- 100
str_concat <- paste0("Valor: ", format(valor, currency = "BRL"))
print(str_concat)


#Exemplo 4
data_hora <- Sys.time()
str_template <- paste0("Data e hora: ", data_hora)
print(str_template)


#Exemplo 5
numero <- 3.14159
str_template <- paste0("Número com duas casas decimais: ", round(numero, 2))
print(str_template)