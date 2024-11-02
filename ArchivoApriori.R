# Instalar y cargar las librerías necesarias
install.packages("arules")
library(arules)

# Cargar los datos (adaptar las rutas de archivo)
data2023 <- read.csv("2023.csv", sep=";")
data2022 <- read.csv("2022.csv", sep=";")

#Eliminar columnas que tienen un valor unico
data2023 <- data2023[, sapply(data2023, function(col) length(unique(col)) > 1)]
data2022 <- data2022[, sapply(data2022, function(col) length(unique(col)) > 1)]

#Aqui van las reglas 
reglas2023 <- apriori(data2023, parameter = list(support=0.2, confidence=0.5 ))
reglas2022 <- apriori(data2022, parameter = list(support=0.2, confidence=0.5 ))

#Mostrar las reglas 
inspect(reglas2023[0:100])
inspect(reglas2022[0:100])

# Mostrar las reglas interesantes
inspect(sort(reglas2023, by = "lift")[1:10])
inspect(sort(reglas2022, by = "lift")[1:10])