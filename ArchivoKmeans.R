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

#se unen a la misma data
combinar_data <- bind_rows(data2023, data2022)
print(head(combinar_data))

# Convertir 'Clase' y 'Sexo (Subclase)'
combinar_data$Clase <- as.factor(combinar_data$Clase)
combinar_data$`Sexo (subclase)` <- as.factor(combinar_data$`Sexo (subclase)`)

# Generar reglas de asociación
reglas <- apriori(combinar_data, parameter = list(support = 0.2, confidence = 0.5))
inspect(reglas[0:100])


# Filtrar para 'Clase' específica (ejemplo para clase 1: Bovino)
combinar_data_clase1 <- subset(combinar_data, Clase == 1)
reglas_clase1 <- apriori(combinar_data_clase1, parameter = list(support = 0.2, confidence = 0.5))
inspect(reglas_clase1[0:200])


# Filtrar para 'Clase' específica (ejemplo para clase 2: Bovino)
combinar_data_clase2 <- subset(combinar_data, Clase == 2)
reglas_clase2 <- apriori(combinar_data_clase2, parameter = list(support = 0.2, confidence = 0.5))
inspect(reglas_clase2[0:200])


# Filtrar para 'Clase' específica (ejemplo para clase 3: Ovino)
combinar_data_clase3 <- subset(combinar_data, Clase == 3)

# Verifica y elimina 'Tipo de Carne' si tiene menos de 2 valores únicos
if (length(unique(combinar_data_clase3$`Tipo de Carne`)) <= 1) {
  combinar_data_clase3 <- combinar_data_clase3[, !(names(combinar_data_clase3) %in% "Tipo de Carne")]
}

# Convertir 'Clase' a factor
combinar_data_clase3$Clase <- as.factor(combinar_data_clase3$Clase)

# Generar reglas con apriori
reglas_clase3 <- apriori(combinar_data_clase3, parameter = list(support = 0.2, confidence = 0.5))
inspect(reglas_clase3[0:400])
inspect(sort(reglas_clase3, by = "lift")[1:400])


# Filtrar para 'Clase' específica (ejemplo para clase 4)
combinar_data_clase4 <- subset(combinar_data, Clase == 4)

# Verifica y elimina 'Tipo de Carne' si tiene menos de 2 valores únicos
if (length(unique(combinar_data_clase4$`Tipo de Carne`)) <= 1) {
  combinar_data_clase4 <- combinar_data_clase4[, !(names(combinar_data_clase4) %in% "Tipo de Carne")]
}

# Convertir 'Clase' a factor
combinar_data_clase4$Clase <- as.factor(combinar_data_clase4$Clase)

# Generar reglas con apriori
reglas_clase4 <- apriori(combinar_data_clase4, parameter = list(support = 0.2, confidence = 0.5))
inspect(reglas_clase4[0:200])
inspect(sort(reglas_clase4, by = "lift")[1:174])

# Selección de columnas numéricas
num_cols <- sapply(combinar_data, is.numeric)
data_numeric <- combinar_data[, num_cols]
data_scaled <- scale(data_numeric)

anyNA(data_scaled)
any(is.infinite(data_scaled))

data_scaled <- na.omit(data_scaled)

set.seed(25) # Fijar semilla 
cluster <- kmeans(data_scaled, centers = 4)

# Convierte los datos en un data frame e incluye la asignación de cluster
data_clustered <- as.data.frame(data_scaled)
data_clustered$cluster <- as.factor(cluster$cluster)

ggplot(data_clustered, aes(x = `Peso total en libras`, y = `Número de Cabezas`, color = cluster)) +
  geom_point() +
  geom_point(data = as.data.frame(cluster$centers), aes(x = `Peso total en libras`, y = `Número de Cabezas`), 
             color = "black", size = 4, shape = 17) +
  labs(title = "Clustering K-means: Peso total en libras vs. Número de Cabezas") +
  theme_minimal()


ggplot(data_clustered, aes(x = `Departamento`, y = `Número de Cabezas`, color = cluster)) +
  geom_point() +
  geom_point(data = as.data.frame(cluster$centers), aes(x = `Departamento`, y = `Número de Cabezas`), 
             color = "black", size = 4, shape = 17) +
  labs(title = "Clustering K-means: Departamento vs. Número de Cabezas") +
  theme_minimal()

dataf <- subset(combinar_data, Clase == 4)

# mostrar
str(dataf)

# Convertir factores o caracteres a numéricos
dataf <- dataf %>% 
  mutate_if(is.factor, ~ as.numeric(as.character(.))) %>% 
  mutate_if(is.character, ~ as.numeric(.))

#Omitir y verificar filas con NA
sum(is.na(dataf))
dataf <- na.omit(dataf)

if (!all(sapply(dataf, is.numeric))) {
  stop("Aún hay columnas no numéricas")
}

clusterf <- kmeans(dataf, centers = 4)


ggplot(dataf, aes(x = `Número de Cabezas`, y = `Peso total en libras`, color = as.factor(clusterf$cluster)))+
  geom_point()+
  geom_point(data = as.data.frame(clusterf$centers), aes(x=`Número de Cabezas`, y = `Peso total en libras`), color = "black", size=4, shape=17)+
  labs(title = "`Número de Cabezas` vs Peso total en libras")+
  theme_minimal()

ggplot(dataf, aes(x = `Departamento`, y = `Número de Cabezas`, color = as.factor(clusterf$cluster)))+
  geom_point() +
  geom_point(data = as.data.frame(clusterf$centers), aes(x = `Departamento`, y = `Número de Cabezas`),  color = "black", size=4, shape=17)+
  labs(title = "Clustering K-means: Departamento vs. Número de Cabezas") +
  theme_minimal()
