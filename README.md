Documentación técnica:
Implementación de algoritmo de reglas de asociación:

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


Se replica en otro ambiente

Regla cuando sea clase 1 

[94]  {Número de Cabezas=[10,35), Desperdicio=1}                          => {Peso total en libras=[5.4e+03,2.1e+04)}               0.2122637 0.9517437  0.2230261 2.949392  2347


clase 2 

[28]  {Peso total en libras=[1.72e+03,6.4e+03)}             => {Sangre=1}                                       0.2739882 0.8426573  0.3251478 3.075524 1205 

[61]  {Peso total en libras=[60,1.72e+03)}                  => {Sangre=0}                                       0.3269668 0.9993051  0.3271942 3.033087 1438 

clase 3
45]  {Municipio=[1,10)}                                    => {Sebo=0}                                         0.2330097 0.7058824  0.3300971 1.843990 168  
[46]  {Sebo=0}                                              => {Municipio=[1,10)}                               0.2330097 0.6086957  0.3828017 1.843990 168  
[47]  {Municipio=[1,10)}                                    => {Desperdicio=0}                                  0.3259362 0.9873950  0.3300971 1.999752 235  
[48]  {Desperdicio=0}                                       => {Municipio=[1,10)}                               0.3259362 0.6601124  0.4937587 1.999752 235  
[49]  {Municipio=[1,10)}                                    => {Sangre=0}                                       0.3259362 0.9873950  0.3300971 1.999752 235  
[50]  {Sangre=0}                                            => {Municipio=[1,10)}                               0.3259362 0.6601124  0.4937587 1.999752 235  



clase 4 

[34]  {Sexo (subclase)=8} => {Municipio=[1.2e+03,1.41e+03]}                        0.2936508 0.9487179  0.3095238 2.2554427  37  

[74]              
       {Clase=4,                                                                                                                           Número de Cabezas=[1,3),
       Peso total en libras=[48,135)}  => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27

[174] {Departamento=[12,14],
       Clase=4,                                                                                                                            Sebo=0,                                                                                                                             Vísceras=0,                                                                                                                         Sangre=0,                                                                                                                           Desperdicio=0,                                                                                                                      Año=[2022,2023]} => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28

Implementación de algoritmo de clúster:

Código

Se replica en otro ambiente

Gráfica


 Empleando el algoritmo Apriori, los estudiantes deben descubrir patrones y
relaciones interesantes entre diferentes variables en los conjuntos de datos
(mínimo 4 patrones interesantes).
● Deben identificar asociaciones significativas que puedan ayudar a
comprender mejor la problemática en cuestión y sugerir posibles
intervenciones.
● Se espera que proporcionen interpretaciones sobre el significado y la
relevancia de estas reglas de asociación para abordar la problemática
identificada.





Empleando el algoritmo FP-Growth, los estudiantes deben descubrir
patrones y relaciones interesantes entre diferentes variables en los conjuntos
de datos (mínimo 4 patrones interesantes).
● Deben identificar asociaciones significativas que puedan ayudar a
comprender mejor la problemática en cuestión y sugerir posibles
intervenciones.
● Se espera que proporcionen interpretaciones sobre el significado y la
relevancia de estas reglas de asociación para abordar la problemática
identificada.



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