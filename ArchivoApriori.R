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
combined_data <- bind_rows(data2023, data2022)
print(head(combined_data))

read_sheet_from_row <- function(file_path, sheet) {
  # Extrae el año del nombre del archivo (asumiendo que el año está en el nombre del archivo)
  year <- as.numeric(gsub("[^0-9]", "", basename(file_path)))
  
  # Define la fila de inicio por defecto
  start_row <- 17
  clase <- 0
  sexo <- 0
  
  # Cambia la fila de inicio si la hoja es "CUADRO II - 4.1"
  if (sheet == "CUADRO II - 4.1") {
    tipo <- 1
    clase <- 1
    sexo <- 1
  }
  else if (sheet == "CUADRO II - 5.1"){
    tipo <- 1
    clase <- 1
    sexo <- 2 #Novillo
  }
  else if (sheet == "CUADRO II - 6.1"){
    tipo <- 1
    clase <- 1
    sexo <- 3 #Bueyes
  }
  else if (sheet == "CUADRO II - 7.1"){
    tipo <- 1
    clase <- 1
    sexo <- 4 #ternero
  }
  else if (sheet == "CUADRO II - 8.1"){
    tipo <- 1
    clase <- 1
    sexo <- 5 #vaca
  }
  else if (sheet == "CUADRO II - 9.1"){
    tipo <- 1
    clase <- 1
    sexo <- 6 #Novilla
  }
  else if (sheet == "CUADRO II - 10.1"){
    tipo <- 1
    clase <- 1
    sexo <- 7 #Ternera
  }
  else if (sheet == "CUADRO II - 12.1"){
    clase <- 1
    sexo <- 7 #Ternera
  }
  else if (sheet == "CUADRO II - 14.1"){
    tipo <- 1
    clase <- 2 #porcino
  }
  else if (sheet == "CUADRO II - 15.1"){
    tipo <- 1
    clase <- 3 #ovino
  }
  else if (sheet == "CUADRO II - 16.1"){
    tipo <- 1
    clase <- 4 #caprino
  }
  
  # Leer los datos sin encabezados, omitiendo las filas previas
  data <- read_excel(
    path = file_path,
    sheet = sheet,
    skip = start_row - 1,  # Omitir filas previas al comienzo de los datos
    col_names = FALSE  # No leer encabezados
  )
  
  # Eliminar la última fila si contiene información de fuente
  data <- data[-nrow(data), ]  
  
  # Filtrar filas vacías
  data <- data %>%
    filter(rowSums(is.na(.)) < ncol(.))  # Elimina filas vacías
  
  # Añadir columna del año
  data <- mutate(data, Año = year)
  
  # Reorganizar las columnas manualmente utilizando las posiciones conocidas
  data <- data %>%
    transmute(
      `Tipo de Carne` = tipo,
      Mes = NA,
      Departamento = as.character(.[[1]]),  # Columna A (texto)
      Municipio = NA,
      Clase = clase,                                                                    # Columna D
      `Sexo (subclase)` = sexo,
      `Número de Cabezas` = as.double(.[[2]]),                                          # Columna B
      `Peso total en libras` = as.double(.[[3]]),                                       # Columna C
      `Peso total del número de cabezas (quintales)` = as.double(.[[5]]),               # Columna E 
      `Peso vivo promedio (Peso de cada cabeza)` = as.double(.[[4]]),                   # Columna D 
      `Carne y Hueso` = format(as.double(.[[7]]), big.mark = ",", scientific = FALSE),  # Columna G 
      Sebo = format(as.double(.[[8]]), big.mark = ",", scientific = FALSE),             # Columna H 
      Total = format(as.double(.[[6]]), big.mark = ",", scientific = FALSE),            # Columna F 
      Vísceras = format(as.double(.[[9]]), big.mark = ",", scientific = FALSE),         # Columna I 
      Cuero = format(as.double(.[[10]]), big.mark = ",", scientific = FALSE),           # Columna J 
      Sangre = format(as.double(.[[11]]), big.mark = ",", scientific = FALSE),          # Columna K 
      Desperdicio = format(as.double(.[[12]]), big.mark = ",", scientific = FALSE),     # Columna L 
      `Año` = year
    )
  
  return(data)
}

# Ruta a la carpeta con los archivos
folder_path <- "Archivos Originales/"
file_list <- list.files(folder_path, pattern = "\\.xlsx$", full.names = TRUE)

# Lista de hojas  leer
sheets_to_read <- c("CUADRO II - 4.1", "CUADRO II - 5.1", "CUADRO II - 6.1", "CUADRO II - 7.1",
                    "CUADRO II - 8.1", "CUADRO II - 9.1", "CUADRO II - 10.1",
                    "CUADRO II - 14.1", "CUADRO II - 15.1", "CUADRO II - 16.1")

# Lee todos los archivos y hojas
all_data <- file_list %>%
  map_df(~ {
    file <- .x
    map_df(sheets_to_read, ~ read_sheet_from_row(file, .x))
  })

# Muestra el resultado final
all_data


#Aqui van las reglas 
reglas <- apriori(combined_data, parameter = list(support=0.2, confidence=0.5 ))
reglas2023 <- apriori(data2023, parameter = list(support=0.2, confidence=0.5 ))
reglas2022 <- apriori(data2022, parameter = list(support=0.2, confidence=0.5 ))

#Mostrar las reglas 
inspect(reglas[0:300])
inspect(reglas[300:600])
inspect(reglas[600:628])
inspect(reglas2023[0:100])
inspect(reglas2022[0:100])

# Mostrar las reglas interesantes
inspect(sort(reglas, by = "lift")[1:500])
inspect(sort(reglas2023, by = "lift")[1:10])
inspect(sort(reglas2022, by = "lift")[1:10])

