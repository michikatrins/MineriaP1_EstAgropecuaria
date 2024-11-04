# Instalar y cargar las librerías necesarias
install.packages("arules")
install.packages("readxl")
install.packages("dplyr")
install.packages("purrr")
library(arules)
library(readxl)
library(dplyr)
library(purrr)

read_sheet_from_row <- function(file_path, sheet) {
  # Extrae el año del nombre del archivo
  year <- as.numeric(gsub("[^0-9]", "", basename(file_path)))
  
  # Define la fila de inicio por defecto
  start_row <- 17
  clase <- 0
  sexo <- 0
  
  #se establecen variables
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
  
  # Leer los datos sin encabezados,
  data <- read_excel(
    path = file_path,
    sheet = sheet,
    skip = start_row - 1,  
    col_names = FALSE 
  )
  
  # Eliminar la última fila porque tiene la fuente
  data <- data[-nrow(data), ]  
  
  data <- data %>%
    filter(rowSums(is.na(.)) < ncol(.))  # Elimina filas vacías
  
  # Añadir columna del año
  data <- mutate(data, Año = year)
  
  # Reorganizar las columnas 
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
