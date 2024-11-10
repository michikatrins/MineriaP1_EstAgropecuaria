# Instalar y cargar las librerías necesarias
install.packages("arules")
install.packages("readxl")
install.packages("dplyr")
install.packages("purrr")
library(arules)
library(readxl)
library(dplyr)
library(purrr)

# Cargar los datos (adaptar las rutas de archivo)
data2023 <- read.csv("2023.csv", sep=";")
data2022 <- read.csv("2022.csv", sep=";")

#Eliminar columnas que tienen un valor unico
data2023 <- data2023[, sapply(data2023, function(col) length(unique(col)) > 1)]
data2022 <- data2022[, sapply(data2022, function(col) length(unique(col)) > 1)]

data2023$Mes <- as.factor(data2023$Mes)
data2023$Año <- 2023

data2022$Mes <- as.factor(data2022$Mes)
data2022$Año <- 2022


names(data2023) <- c("Corre", "Tipo de Carne", "Mes", "Departamento", "Municipio",
                               "Clase", "Sexo (subclase)", "Número de Cabezas", "Peso total en libras",
                               "Peso total del número de cabezas (quintales)", "Peso vivo promedio (Peso de cada cabeza)",
                               "Carne y Hueso", "Sebo", "Total", "Vísceras", "Cuero", "Sangre", "Desperdicio","Año")
names(data2022) <- c("Corre", "Tipo de Carne", "Mes", "Departamento", "Municipio",
                     "Clase", "Sexo (subclase)", "Número de Cabezas", "Peso total en libras",
                     "Peso total del número de cabezas (quintales)", "Peso vivo promedio (Peso de cada cabeza)",
                     "Carne y Hueso", "Sebo", "Total", "Vísceras", "Cuero", "Sangre", "Desperdicio","Año")


data2023 <- data2023[, !colnames(data2023) %in% "Corre"]
data2022 <- data2022[, !colnames(data2022) %in% "Corre"]

#como tiene distinto tipo se convierten ambos al mismo
data2023$`Número de Cabezas` <- as.integer(data2023$`Número de Cabezas`)
data2022$`Número de Cabezas` <- as.integer(data2022$`Número de Cabezas`)
data2023$`Peso total en libras` <- gsub("[^0-9.-]", "", data2023$`Peso total en libras`)
data2022$`Peso total en libras` <- gsub("[^0-9.-]", "", data2022$`Peso total en libras`)
data2023$`Peso total en libras` <- as.double(data2023$`Peso total en libras`)
data2022$`Peso total en libras` <- as.double(data2022$`Peso total en libras`)

#se unen a la misma data
combinar_data <- bind_rows(data2023, data2022)
print(head(combinar_data))

#Aqui van las reglas 
reglas <- apriori(combinar_data, parameter = list(support=0.2, confidence=0.5 ))

#Mostrar las reglas 
inspect(reglas[0:300])
inspect(reglas[300:600])
inspect(reglas[600:628])

# Mostrar las reglas interesantes
inspect(sort(reglas, by = "lift")[1:500])
