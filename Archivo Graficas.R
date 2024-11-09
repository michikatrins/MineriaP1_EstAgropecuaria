# Instalar y cargar las librerías necesarias
install.packages("arules")
install.packages("readxl")
install.packages("dplyr")
install.packages("purrr")
install.packages("genero")
install.packages("ggplot")
library(genero)
library(arules)
library(readxl)
library(dplyr)
library(purrr)
library(ggplot2)

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

Total_data <- bind_rows(data2023, data2022)
print(head(Total_data))

data2023_fil <- Total_data %>% filter(Año == 2023)

# Agrupar y sumar
graph2023 <- data2023_fil %>%
  group_by(Departamento) %>%
  summarise(Total_Numero_Cabezas = sum(`Número de Cabezas`, na.rm = TRUE))


ggplot(graph2023, aes(x = Departamento, y = Total_Numero_Cabezas)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(title = "Número de Cabezas por Departamento en 2023",
       x = "Departamento", 
       y = "Total Número de Cabezas") +
  scale_x_discrete(limits = c("Guatemala", "El Progreso", "Sacatepéquez", 
                              "Chimaltenango", "Escuintla", "Santa Rosa", 
                              "Sololá", "Totonicapán", "Quetzaltenango", 
                              "Suchitepéquez", "Retalhuleu", "San Marcos", 
                              "Huehuetenango", "Quiché", "Baja Verapaz", 
                              "Alta Verapaz", "Petén", "Izabal", "Zacapa", 
                              "Chiquimula", "Jalapa", "Jutiapa")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))


data2022_fil <- Total_data %>% filter(Año == 2022)

# Agrupar y sumar
graph2022 <- data2022_fil %>%
  group_by(Departamento) %>%
  summarise(Total_Numero_Cabezas = sum(`Número de Cabezas`, na.rm = TRUE))


ggplot(graph2022, aes(x = Departamento, y = Total_Numero_Cabezas)) +
  geom_bar(stat = "identity", fill = "red") +
  theme_minimal() +
  labs(title = "Número de Cabezas por Departamento en 2022",
       x = "Departamento", 
       y = "Total Número de Cabezas") +
  scale_x_discrete(limits = c("Guatemala", "El Progreso", "Sacatepéquez", 
                              "Chimaltenango", "Escuintla", "Santa Rosa", 
                              "Sololá", "Totonicapán", "Quetzaltenango", 
                              "Suchitepéquez", "Retalhuleu", "San Marcos", 
                              "Huehuetenango", "Quiché", "Baja Verapaz", 
                              "Alta Verapaz", "Petén", "Izabal", "Zacapa", 
                              "Chiquimula", "Jalapa", "Jutiapa")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))


