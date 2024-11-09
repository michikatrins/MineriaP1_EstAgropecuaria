Implementación en Otros Entornos

Tener instalada R y RStudio.
Adapta las rutas de los archivos según el entorno.
Instala y carga las librerías necesarias.
Personaliza las columnas, tipos de datos y procesamiento según tus datos específicos.


Documentación técnica:

1. Este script realiza un análisis y transformación de datos usando R, específicamente para datos relacionados con producción y peso de ganado. 

Las principales funciones incluyen:

Limpieza y manipulación de datos.
Lectura de archivos CSV y Excel.
Aplicación del algoritmo Apriori para descubrir reglas de asociación.

2. Instalación de Librerías Necesarias

Para ejecutar el script, asegúrate de tener instaladas las siguientes librerías. Si alguna no está instalada, ejecuta el siguiente código:

# Instalación de librerías necesarias
install.packages("arules")
install.packages("readxl")
install.packages("dplyr")
install.packages("purrr")

# Carga de las librerías
library(arules)
library(readxl)
library(dplyr)
library(purrr)

3. Lectura de Datos CSV
Este código lee datos de archivos CSV. Los nombres de los archivos deben adaptarse a tus necesidades.

# NOTA SUPER IMPORTANTE: COLOCA LOS ARCHIVOS EN TU DIRECTORIO :) PARA  PODER LEERLOS Y SINO MODIFICA "2023.csv"
# Y COLOCA LA DIRECCIÓN DONDE SE ENCUENTRAN
# Cargar los datos (ajusta las rutas según tu sistema)
data2023 <- read.csv("2023.csv", sep = ";")
data2022 <- read.csv("2022.csv", sep = ";")

4. Limpieza y Preprocesamiento de Datos
Se eliminan las columnas con valores únicos y se realizan algunas conversiones de tipos de datos.

# Eliminar columnas con un solo valor único
data2023 <- data2023[, sapply(data2023, function(col) length(unique(col)) > 1)]
data2022 <- data2022[, sapply(data2022, function(col) length(unique(col)) > 1)]

# Conversiones de tipo
data2023$Mes <- as.factor(data2023$Mes)
data2023$Año <- 2023
data2022$Mes <- as.factor(data2022$Mes)
data2022$Año <- 2022

5. Renombrar Columnas

# Renombrar columnas de los datos
names(data2023) <- c("Corre", "Tipo de Carne", "Mes", "Departamento", "Municipio", 
                     "Clase", "Sexo (subclase)", "Número de Cabezas", "Peso total en libras", 
                     "Peso total del número de cabezas (quintales)", "Peso vivo promedio (Peso de cada cabeza)",
                     "Carne y Hueso", "Sebo", "Total", "Vísceras", "Cuero", "Sangre", "Desperdicio", "Año")

names(data2022) <- c("Corre", "Tipo de Carne", "Mes", "Departamento", "Municipio", 
                     "Clase", "Sexo (subclase)", "Número de Cabezas", "Peso total en libras", 
                     "Peso total del número de cabezas (quintales)", "Peso vivo promedio (Peso de cada cabeza)",
                     "Carne y Hueso", "Sebo", "Total", "Vísceras", "Cuero", "Sangre", "Desperdicio", "Año")
6. Conversión de Tipos de Datos

# Conversión de datos a tipos específicos
data2023$`Número de Cabezas` <- as.integer(data2023$`Número de Cabezas`)
data2022$`Número de Cabezas` <- as.integer(data2022$`Número de Cabezas`)
data2023$`Peso total en libras` <- as.double(gsub("[^0-9.-]", "", data2023$`Peso total en libras`))
data2022$`Peso total en libras` <- as.double(gsub("[^0-9.-]", "", data2022$`Peso total en libras`))

7. Combinación de Datos
Combina los datos para análisis conjunto.

# Combinar los datos
Combinar <- bind_rows(data2023, data2022)
print(head(Combinar))

8. Función para Leer Hojas de Archivos Excel

read_sheet_from_row <- function(file_path, sheet) {

  year <- as.numeric(gsub("[^0-9]", "", basename(file_path)))
  
  start_row <- 17
  clase <- 0
  sexo <- 0

  data <- read_excel(
    path = file_path,
    sheet = sheet,
    skip = start_row - 1,  # Skip rows before data starts
    col_names = FALSE  # No headers
  )
  
  data <- data %>%
    filter(rowSums(is.na(.)) < ncol(.))  # Eliminate empty rows
  data <- mutate(data, Año = year)
  return(data)
}
9. Lectura de Archivos Excel

# Ruta de la carpeta con archivos
folder_path <- "Archivos Originales/"
file_list <- list.files(folder_path, pattern = "\\.xlsx$", full.names = TRUE)

# Lista de hojas a leer
sheets_to_read <- c("CUADRO II - 4.1", "CUADRO II - 5.1", ...)

# Leer todos los archivos y hojas
all_data <- file_list %>%
  map_df(~ map_df(sheets_to_read, ~ read_sheet_from_row(.x, .y)))

all_data

10. Generar Reglas de Asociación (Apriori)

# Generar reglas de asociación
reglas <- apriori(Combinar, parameter = list(support = 0.2, confidence = 0.5))
inspect(sort(reglas, by = "lift")[1:10])



# ANALISIS APRIORI 2FP-GROWTH
El proceso descrito es similar al realizado anteriormente para las demás clases con algunas diferencias clave en la manipulación de datos y generación de reglas de asociación. Aquí están los detalles específicos que se destacan en este contexto:

Filtrado de 'Tipo de Carne':

Se verifica si la columna 'Tipo de Carne' contiene menos de 2 valores únicos. Si es así, se elimina la columna para evitar problemas en el análisis de reglas. Esto es útil cuando la variable no aporta diversidad para generar reglas.

# se unen a la misma data
combinar_data <- bind_rows(data2023, data2022)
print(head(combinar_data))

# Convertir 'Clase' y 'Sexo (Subclase)'
combinar_data$Clase <- as.factor(combinar_data$Clase)
combinar_data$`Sexo (subclase)` <- as.factor(combinar_data$`Sexo (subclase)`)

# Generar reglas de asociación
reglas <- apriori(combinar_data, parameter = list(support = 0.2, confidence = 0.5))
inspect(reglas[0:100])

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



Empleando el algoritmo Apriori, los estudiantes deben descubrir patrones y
relaciones interesantes entre diferentes variables en los conjuntos de datos
(mínimo 4 patrones interesantes).
● Deben identificar asociaciones significativas que puedan ayudar a
comprender mejor la problemática en cuestión y sugerir posibles
intervenciones.
● Se espera que proporcionen interpretaciones sobre el significado y la
relevancia de estas reglas de asociación para abordar la problemática
identificada.


REGLAS 


[19]  {Tipo de Carne=[1,2], Clase=[1,4], Cuero=0}      => {Peso vivo promedio (Peso de cada cabeza)=[0.3,3.5)} 
                                                                                0.2835848  0.9264529 0.3060974 2.784996  4623

[621] {Tipo de Carne=[1,2],
       Departamento=[14,22]
       Clase=[1,4]
       Año=[2022,2023]}  => {Sexo (subclase)=[5,9]}                             0.2407067  0.5167918 0.4657711 1.074721  3924

[264] {Tipo de Carne=[1,2],  
       Municipio=[12,1.21e+03),
       Clase=[1,4],
       Año=[2022,2023]} => {Departamento=[1,12)}                                0.2135934  0.6272744 0.3405104 1.977534  3482

[18] {Tipo de Carne=[1,2],
      Municipio=[1.21e+03,2.21+03],                                                                                                        
      Clase=[1,4],
      Año=[2022,2023]}  => {Sexo (subclase)=[5,9]}                              0.2211999  0.6615300 0.3343762 1.375719  3606


Empleando el algoritmo FP-Growth, los estudiantes deben descubrir
patrones y relaciones interesantes entre diferentes variables en los conjuntos
de datos (mínimo 4 patrones interesantes).
● Deben identificar asociaciones significativas que puedan ayudar a
comprender mejor la problemática en cuestión y sugerir posibles
intervenciones.
● Se espera que proporcionen interpretaciones sobre el significado y la
relevancia de estas reglas de asociación para abordar la problemática
identificada.

Regla cuando sea clase 1 

[94]  {Número de Cabezas=[10,35), Desperdicio=1}                          => {Peso total en libras=[5.4e+03,2.1e+04)}               0.2122637 0.9517437  0.2230261 2.949392  2347


clase 2 

[28]  {Peso total en libras=[1.72e+03,6.4e+03)}             => {Sangre=1}                                       0.2739882 0.8426573  0.3251478 3.075524 1205 

[61]  {Peso total en libras=[60,1.72e+03)}                  => {Sangre=0}                                       0.3269668 0.9993051  0.3271942 3.033087 1438 

clase 3
[45]  {Municipio=[1,10)}                                    => {Sebo=0}                                         0.2330097 0.7058824  0.3300971 1.843990 168  
[46]  {Sebo=0}                                              => {Municipio=[1,10)}                               0.2330097 0.6086957  0.3828017 1.843990 168  
[47]  {Municipio=[1,10)}                                    => {Desperdicio=0}                                  0.3259362 0.9873950  0.3300971 1.999752 235  
[48]  {Desperdicio=0}                                       => {Municipio=[1,10)}                               0.3259362 0.6601124  0.4937587 1.999752 235  
[49]  {Municipio=[1,10)}                                    => {Sangre=0}                                       0.3259362 0.9873950  0.3300971 1.999752 235  
[50]  {Sangre=0}                                            => {Municipio=[1,10)}                               0.3259362 0.6601124  0.4937587 1.999752 235  


clase 4 

[34]  {Sexo (subclase)=8} => {Municipio=[1.2e+03,1.41e+03]}                        0.2936508 0.9487179  0.3095238 2.2554427  37  

[74]                                                                                                     {Clase=4,                                                                                                                                         Número de Cabezas=[1,3),
       Peso total en libras=[48,135)}  => {Peso total del número de cabezas (quintales)=1} 
                                                                                    0.2142857  0.8437500 0.2539683 2.725962    27

[174] {Departamento=[12,14],
       Clase=4,                                                                                                                            Sebo=0,                                                                                                                             Vísceras=0,                                                                                                                         Sangre=0,                                                                                                                           Desperdicio=0,                                                                                                                      Año=[2022,2023]} => {Carne y Hueso=1}                                        0.2222222  0.5957447 0.3730159 2.680851    28


Utilizando técnicas de clustering (K-Means), el estudiante debe identificar
grupos o segmentos de datos relacionados con una problemática específica
seleccionada en el set de datos.
● Deben explorar posibles correlaciones entre los grupos identificados y
variables relevantes en los conjuntos de datos.
● Se espera que proporcionen interpretaciones significativas de los resultados
del clustering y discutan cómo estos grupos pueden ser útiles para
comprender y abordar la problemática identificada.
● Se debe de graficar los clúster.




Basándose en los resultados de los análisis anteriores, el estudiante debe generar
propuestas concretas para abordar y mejorar la problemática identificada. Estas
propuestas deben ser viables y estar respaldadas por los hallazgos del análisis de
datos. Para realizar sus propuestas debe de basarse con documentación científica,
así mismo debe realizar una investigación del contexto guatemalteco para validar la
viabilidad de sus propuestas

Se encuentra en el documento. 