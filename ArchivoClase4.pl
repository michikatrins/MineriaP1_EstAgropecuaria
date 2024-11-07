> inspect(reglas_clase4[0:200])
      lhs                                                      rhs                                                   support   confidence coverage  lift      count
[1]   {}                                                    => {Sebo=0}                                              0.5476190 0.5476190  1.0000000 1.0000000  69  
[2]   {}                                                    => {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} 0.5555556 0.5555556  1.0000000 1.0000000  70  
[3]   {}                                                    => {Desperdicio=0}                                       0.5634921 0.5634921  1.0000000 1.0000000  71  
[4]   {}                                                    => {Sangre=0}                                            0.5634921 0.5634921  1.0000000 1.0000000  71  
[5]   {}                                                    => {Departamento=[12,14]}                                0.9603175 0.9603175  1.0000000 1.0000000 121  
[6]   {}                                                    => {Año=[2022,2023]}                                     1.0000000 1.0000000  1.0000000 1.0000000 126  
[7]   {}                                                    => {Clase=4}                                             1.0000000 1.0000000  1.0000000 1.0000000 126  
[8]   {Carne y Hueso=1}                                     => {Vísceras=0}                                          0.2222222 1.0000000  0.2222222 2.5200000  28  
[9]   {Vísceras=0}                                          => {Carne y Hueso=1}                                     0.2222222 0.5600000  0.3968254 2.5200000  28  
[10]  {Carne y Hueso=1}                                     => {Cuero=0}                                             0.2222222 1.0000000  0.2222222 2.5200000  28  
[11]  {Cuero=0}                                             => {Carne y Hueso=1}                                     0.2222222 0.5600000  0.3968254 2.5200000  28  
[12]  {Carne y Hueso=1}                                     => {Sebo=0}                                              0.2222222 1.0000000  0.2222222 1.8260870  28  
[13]  {Carne y Hueso=1}                                     => {Desperdicio=0}                                       0.2222222 1.0000000  0.2222222 1.7746479  28  
[14]  {Carne y Hueso=1}                                     => {Sangre=0}                                            0.2222222 1.0000000  0.2222222 1.7746479  28  
[15]  {Carne y Hueso=1}                                     => {Departamento=[12,14]}                                0.2222222 1.0000000  0.2222222 1.0413223  28  
[16]  {Carne y Hueso=1}                                     => {Año=[2022,2023]}                                     0.2222222 1.0000000  0.2222222 1.0000000  28  
[17]  {Carne y Hueso=1}                                     => {Clase=4}                                             0.2222222 1.0000000  0.2222222 1.0000000  28  
[18]  {Número de Cabezas=[1,3)}                             => {Peso total del número de cabezas (quintales)=1}      0.2142857 0.8437500  0.2539683 2.7259615  27  
[19]  {Peso total del número de cabezas (quintales)=1}      => {Número de Cabezas=[1,3)}                             0.2142857 0.6923077  0.3095238 2.7259615  27  
[20]  {Número de Cabezas=[1,3)}                             => {Peso total en libras=[48,135)}                       0.2539683 1.0000000  0.2539683 3.0000000  32  
[21]  {Peso total en libras=[48,135)}                       => {Número de Cabezas=[1,3)}                             0.2539683 0.7619048  0.3333333 3.0000000  32  
[22]  {Número de Cabezas=[1,3)}                             => {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} 0.2222222 0.8750000  0.2539683 1.5750000  28  
[23]  {Número de Cabezas=[1,3)}                             => {Departamento=[12,14]}                                0.2142857 0.8437500  0.2539683 0.8786157  27  
[24]  {Número de Cabezas=[1,3)}                             => {Año=[2022,2023]}                                     0.2539683 1.0000000  0.2539683 1.0000000  32  
[25]  {Número de Cabezas=[1,3)}                             => {Clase=4}                                             0.2539683 1.0000000  0.2539683 1.0000000  32  
[26]  {Peso vivo promedio (Peso de cada cabeza)=[0.3,0.35)} => {Departamento=[12,14]}                                0.2777778 1.0000000  0.2777778 1.0413223  35  
[27]  {Peso vivo promedio (Peso de cada cabeza)=[0.3,0.35)} => {Año=[2022,2023]}                                     0.2777778 1.0000000  0.2777778 1.0000000  35  
[28]  {Peso vivo promedio (Peso de cada cabeza)=[0.3,0.35)} => {Clase=4}                                             0.2777778 1.0000000  0.2777778 1.0000000  35  
[29]  {Peso total del número de cabezas (quintales)=1}      => {Peso total en libras=[48,135)}                       0.2936508 0.9487179  0.3095238 2.8461538  37  
[30]  {Peso total en libras=[48,135)}                       => {Peso total del número de cabezas (quintales)=1}      0.2936508 0.8809524  0.3333333 2.8461538  37  
[31]  {Peso total del número de cabezas (quintales)=1}      => {Departamento=[12,14]}                                0.3095238 1.0000000  0.3095238 1.0413223  39  
[32]  {Peso total del número de cabezas (quintales)=1}      => {Año=[2022,2023]}                                     0.3095238 1.0000000  0.3095238 1.0000000  39  
[33]  {Peso total del número de cabezas (quintales)=1}      => {Clase=4}                                             0.3095238 1.0000000  0.3095238 1.0000000  39  
[34]  {Sexo (subclase)=8}                                   => {Municipio=[1.2e+03,1.41e+03]}                        0.2936508 0.9487179  0.3095238 2.2554427  37  
[35]  {Municipio=[1.2e+03,1.41e+03]}                        => {Sexo (subclase)=8}                                   0.2936508 0.6981132  0.4206349 2.2554427  37  
[36]  {Sexo (subclase)=8}                                   => {Departamento=[12,14]}                                0.2936508 0.9487179  0.3095238 0.9879212  37  
[37]  {Sexo (subclase)=8}                                   => {Año=[2022,2023]}                                     0.3095238 1.0000000  0.3095238 1.0000000  39  
[38]  {Sexo (subclase)=8}                                   => {Clase=4}                                             0.3095238 1.0000000  0.3095238 1.0000000  39  
[39]  {Peso total en libras=[135,420)}                      => {Departamento=[12,14]}                                0.3174603 1.0000000  0.3174603 1.0413223  40  
[40]  {Peso total en libras=[135,420)}                      => {Año=[2022,2023]}                                     0.3174603 1.0000000  0.3174603 1.0000000  40  
[41]  {Peso total en libras=[135,420)}                      => {Clase=4}                                             0.3174603 1.0000000  0.3174603 1.0000000  40  
[42]  {Número de Cabezas=[3,10)}                            => {Vísceras=0}                                          0.2142857 0.6750000  0.3174603 1.7010000  27  
[43]  {Vísceras=0}                                          => {Número de Cabezas=[3,10)}                            0.2142857 0.5400000  0.3968254 1.7010000  27  
[44]  {Número de Cabezas=[3,10)}                            => {Cuero=0}                                             0.2142857 0.6750000  0.3174603 1.7010000  27  
[45]  {Cuero=0}                                             => {Número de Cabezas=[3,10)}                            0.2142857 0.5400000  0.3968254 1.7010000  27  
[46]  {Número de Cabezas=[3,10)}                            => {Sebo=0}                                              0.2380952 0.7500000  0.3174603 1.3695652  30  
[47]  {Número de Cabezas=[3,10)}                            => {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} 0.2063492 0.6500000  0.3174603 1.1700000  26  
[48]  {Número de Cabezas=[3,10)}                            => {Desperdicio=0}                                       0.2380952 0.7500000  0.3174603 1.3309859  30  
[49]  {Número de Cabezas=[3,10)}                            => {Sangre=0}                                            0.2380952 0.7500000  0.3174603 1.3309859  30  
[50]  {Número de Cabezas=[3,10)}                            => {Departamento=[12,14]}                                0.3174603 1.0000000  0.3174603 1.0413223  40  
[51]  {Número de Cabezas=[3,10)}                            => {Año=[2022,2023]}                                     0.3174603 1.0000000  0.3174603 1.0000000  40  
[52]  {Número de Cabezas=[3,10)}                            => {Clase=4}                                             0.3174603 1.0000000  0.3174603 1.0000000  40  
[53]  {Peso total en libras=[48,135)}                       => {Vísceras=0}                                          0.2063492 0.6190476  0.3333333 1.5600000  26  
[54]  {Vísceras=0}                                          => {Peso total en libras=[48,135)}                       0.2063492 0.5200000  0.3968254 1.5600000  26  
[55]  {Peso total en libras=[48,135)}                       => {Cuero=0}                                             0.2063492 0.6190476  0.3333333 1.5600000  26  
[56]  {Cuero=0}                                             => {Peso total en libras=[48,135)}                       0.2063492 0.5200000  0.3968254 1.5600000  26  
[57]  {Peso total en libras=[48,135)}                       => {Sebo=0}                                              0.2063492 0.6190476  0.3333333 1.1304348  26  
[58]  {Peso total en libras=[48,135)}                       => {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} 0.2222222 0.6666667  0.3333333 1.2000000  28  
[59]  {Peso total en libras=[48,135)}                       => {Desperdicio=0}                                       0.2063492 0.6190476  0.3333333 1.0985915  26  
[60]  {Peso total en libras=[48,135)}                       => {Sangre=0}                                            0.2063492 0.6190476  0.3333333 1.0985915  26  
[61]  {Peso total en libras=[48,135)}                       => {Departamento=[12,14]}                                0.2936508 0.8809524  0.3333333 0.9173554  37  
[62]  {Peso total en libras=[48,135)}                       => {Año=[2022,2023]}                                     0.3333333 1.0000000  0.3333333 1.0000000  42  
[63]  {Peso total en libras=[48,135)}                       => {Clase=4}                                             0.3333333 1.0000000  0.3333333 1.0000000  42  
[64]  {Peso total en libras=[420,1.2e+03]}                  => {Número de Cabezas=[10,20]}                           0.3095238 0.8863636  0.3492063 2.0681818  39  
[65]  {Número de Cabezas=[10,20]}                           => {Peso total en libras=[420,1.2e+03]}                  0.3095238 0.7222222  0.4285714 2.0681818  39  
[66]  {Peso total en libras=[420,1.2e+03]}                  => {Departamento=[12,14]}                                0.3492063 1.0000000  0.3492063 1.0413223  44  
[67]  {Peso total en libras=[420,1.2e+03]}                  => {Año=[2022,2023]}                                     0.3492063 1.0000000  0.3492063 1.0000000  44  
[68]  {Peso total en libras=[420,1.2e+03]}                  => {Clase=4}                                             0.3492063 1.0000000  0.3492063 1.0000000  44  
[69]  {Sexo (subclase)=1}                                   => {Municipio=[6,1.2e+03)}                               0.2777778 0.7446809  0.3730159 1.9148936  35  
[70]  {Municipio=[6,1.2e+03)}                               => {Sexo (subclase)=1}                                   0.2777778 0.7142857  0.3888889 1.9148936  35  
[71]  {Sexo (subclase)=1}                                   => {Vísceras=0}                                          0.2857143 0.7659574  0.3730159 1.9302128  36  
[72]  {Vísceras=0}                                          => {Sexo (subclase)=1}                                   0.2857143 0.7200000  0.3968254 1.9302128  36  
[73]  {Sexo (subclase)=1}                                   => {Cuero=0}                                             0.2857143 0.7659574  0.3730159 1.9302128  36  
[74]  {Cuero=0}                                             => {Sexo (subclase)=1}                                   0.2857143 0.7200000  0.3968254 1.9302128  36  
[75]  {Sexo (subclase)=1}                                   => {Sebo=0}                                              0.3650794 0.9787234  0.3730159 1.7872340  46  
[76]  {Sebo=0}                                              => {Sexo (subclase)=1}                                   0.3650794 0.6666667  0.5476190 1.7872340  46  
[77]  {Sexo (subclase)=1}                                   => {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} 0.2539683 0.6808511  0.3730159 1.2255319  32  
[78]  {Sexo (subclase)=1}                                   => {Desperdicio=0}                                       0.3730159 1.0000000  0.3730159 1.7746479  47  
[79]  {Desperdicio=0}                                       => {Sexo (subclase)=1}                                   0.3730159 0.6619718  0.5634921 1.7746479  47  
[80]  {Sexo (subclase)=1}                                   => {Sangre=0}                                            0.3730159 1.0000000  0.3730159 1.7746479  47  
[81]  {Sangre=0}                                            => {Sexo (subclase)=1}                                   0.3730159 0.6619718  0.5634921 1.7746479  47  
[82]  {Sexo (subclase)=1}                                   => {Departamento=[12,14]}                                0.3492063 0.9361702  0.3730159 0.9748549  44  
[83]  {Sexo (subclase)=1}                                   => {Año=[2022,2023]}                                     0.3730159 1.0000000  0.3730159 1.0000000  47  
[84]  {Sexo (subclase)=1}                                   => {Clase=4}                                             0.3730159 1.0000000  0.3730159 1.0000000  47  
[85]  {Municipio=[6,1.2e+03)}                               => {Vísceras=0}                                          0.2380952 0.6122449  0.3888889 1.5428571  30  
[86]  {Vísceras=0}                                          => {Municipio=[6,1.2e+03)}                               0.2380952 0.6000000  0.3968254 1.5428571  30  
[87]  {Municipio=[6,1.2e+03)}                               => {Cuero=0}                                             0.2380952 0.6122449  0.3888889 1.5428571  30  
[88]  {Cuero=0}                                             => {Municipio=[6,1.2e+03)}                               0.2380952 0.6000000  0.3968254 1.5428571  30  
[89]  {Municipio=[6,1.2e+03)}                               => {Sebo=0}                                              0.3571429 0.9183673  0.3888889 1.6770186  45  
[90]  {Sebo=0}                                              => {Municipio=[6,1.2e+03)}                               0.3571429 0.6521739  0.5476190 1.6770186  45  
[91]  {Municipio=[6,1.2e+03)}                               => {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} 0.2301587 0.5918367  0.3888889 1.0653061  29  
[92]  {Municipio=[6,1.2e+03)}                               => {Desperdicio=0}                                       0.3730159 0.9591837  0.3888889 1.7022133  47  
[93]  {Desperdicio=0}                                       => {Municipio=[6,1.2e+03)}                               0.3730159 0.6619718  0.5634921 1.7022133  47  
[94]  {Municipio=[6,1.2e+03)}                               => {Sangre=0}                                            0.3730159 0.9591837  0.3888889 1.7022133  47  
[95]  {Sangre=0}                                            => {Municipio=[6,1.2e+03)}                               0.3730159 0.6619718  0.5634921 1.7022133  47  
[96]  {Municipio=[6,1.2e+03)}                               => {Departamento=[12,14]}                                0.3492063 0.8979592  0.3888889 0.9350649  44  
[97]  {Municipio=[6,1.2e+03)}                               => {Año=[2022,2023]}                                     0.3888889 1.0000000  0.3888889 1.0000000  49  
[98]  {Municipio=[6,1.2e+03)}                               => {Clase=4}                                             0.3888889 1.0000000  0.3888889 1.0000000  49  
[99]  {Vísceras=0}                                          => {Cuero=0}                                             0.3968254 1.0000000  0.3968254 2.5200000  50  
[100] {Cuero=0}                                             => {Vísceras=0}                                          0.3968254 1.0000000  0.3968254 2.5200000  50  
[101] {Vísceras=0}                                          => {Sebo=0}                                              0.3968254 1.0000000  0.3968254 1.8260870  50  
[102] {Sebo=0}                                              => {Vísceras=0}                                          0.3968254 0.7246377  0.5476190 1.8260870  50  
[103] {Vísceras=0}                                          => {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} 0.2777778 0.7000000  0.3968254 1.2600000  35  
[104] {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} => {Vísceras=0}                                          0.2777778 0.5000000  0.5555556 1.2600000  35  
[105] {Vísceras=0}                                          => {Desperdicio=0}                                       0.3968254 1.0000000  0.3968254 1.7746479  50  
[106] {Desperdicio=0}                                       => {Vísceras=0}                                          0.3968254 0.7042254  0.5634921 1.7746479  50  
[107] {Vísceras=0}                                          => {Sangre=0}                                            0.3968254 1.0000000  0.3968254 1.7746479  50  
[108] {Sangre=0}                                            => {Vísceras=0}                                          0.3968254 0.7042254  0.5634921 1.7746479  50  
[109] {Vísceras=0}                                          => {Departamento=[12,14]}                                0.3730159 0.9400000  0.3968254 0.9788430  47  
[110] {Vísceras=0}                                          => {Año=[2022,2023]}                                     0.3968254 1.0000000  0.3968254 1.0000000  50  
[111] {Vísceras=0}                                          => {Clase=4}                                             0.3968254 1.0000000  0.3968254 1.0000000  50  
[112] {Cuero=0}                                             => {Sebo=0}                                              0.3968254 1.0000000  0.3968254 1.8260870  50  
[113] {Sebo=0}                                              => {Cuero=0}                                             0.3968254 0.7246377  0.5476190 1.8260870  50  
[114] {Cuero=0}                                             => {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} 0.2777778 0.7000000  0.3968254 1.2600000  35  
[115] {Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]} => {Cuero=0}                                             0.2777778 0.5000000  0.5555556 1.2600000  35  
[116] {Cuero=0}                                             => {Desperdicio=0}                                       0.3968254 1.0000000  0.3968254 1.7746479  50  
[117] {Desperdicio=0}                                       => {Cuero=0}                                             0.3968254 0.7042254  0.5634921 1.7746479  50  
[118] {Cuero=0}                                             => {Sangre=0}                                            0.3968254 1.0000000  0.3968254 1.7746479  50  
[119] {Sangre=0}                                            => {Cuero=0}                                             0.3968254 0.7042254  0.5634921 1.7746479  50  
[120] {Cuero=0}                                             => {Departamento=[12,14]}                                0.3730159 0.9400000  0.3968254 0.9788430  47  
[121] {Cuero=0}                                             => {Año=[2022,2023]}                                     0.3968254 1.0000000  0.3968254 1.0000000  50  
[122] {Cuero=0}                                             => {Clase=4}                                             0.3968254 1.0000000  0.3968254 1.0000000  50  
[123] {Municipio=[1.2e+03,1.41e+03]}                        => {Número de Cabezas=[10,20]}                           0.2539683 0.6037736  0.4206349 1.4088050  32  
[124] {Número de Cabezas=[10,20]}                           => {Municipio=[1.2e+03,1.41e+03]}                        0.2539683 0.5925926  0.4285714 1.4088050  32  
[125] {Municipio=[1.2e+03,1.41e+03]}                        => {Departamento=[12,14]}                                0.4206349 1.0000000  0.4206349 1.0413223  53  
 [ reached 'max' / getOption("max.print") -- omitted 75 rows ]


 > inspect(sort(reglas_clase4, by = "lift")[1:174])
      lhs                                                       rhs                                                support confidence  coverage     lift count
[1]   {Peso total en libras=[48,135),                                                                                                                         
       Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]}  => {Número de Cabezas=[1,3)}                        0.2222222  1.0000000 0.2222222 3.937500    28
[2]   {Peso total en libras=[48,135),                                                                                                                         
       Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6],                                                                                                   
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2222222  1.0000000 0.2222222 3.937500    28
[3]   {Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]}  => {Número de Cabezas=[1,3)}                        0.2222222  1.0000000 0.2222222 3.937500    28
[4]   {Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6],                                                                                                   
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2222222  1.0000000 0.2222222 3.937500    28
[5]   {Departamento=[12,14],                                                                                                                                  
       Número de Cabezas=[1,3)}                              => {Peso total del número de cabezas (quintales)=1} 0.2142857  1.0000000 0.2142857 3.230769    27
[6]   {Departamento=[12,14],                                                                                                                                  
       Peso total en libras=[48,135)}                        => {Peso total del número de cabezas (quintales)=1} 0.2936508  1.0000000 0.2936508 3.230769    37
[7]   {Departamento=[12,14],                                                                                                                                  
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total en libras=[48,135)}                        => {Peso total del número de cabezas (quintales)=1} 0.2142857  1.0000000 0.2142857 3.230769    27
[8]   {Departamento=[12,14],                                                                                                                                  
       Número de Cabezas=[1,3),                                                                                                                               
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2142857  1.0000000 0.2142857 3.230769    27
[9]   {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3)}                              => {Peso total del número de cabezas (quintales)=1} 0.2142857  1.0000000 0.2142857 3.230769    27
[10]  {Departamento=[12,14],                                                                                                                                  
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2936508  1.0000000 0.2936508 3.230769    37
[11]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total en libras=[48,135)}                        => {Peso total del número de cabezas (quintales)=1} 0.2936508  1.0000000 0.2936508 3.230769    37
[12]  {Departamento=[12,14],                                                                                                                                  
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2142857  1.0000000 0.2142857 3.230769    27
[13]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total en libras=[48,135)}                        => {Peso total del número de cabezas (quintales)=1} 0.2142857  1.0000000 0.2142857 3.230769    27
[14]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2142857  1.0000000 0.2142857 3.230769    27
[15]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2936508  1.0000000 0.2936508 3.230769    37
[16]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2142857  1.0000000 0.2142857 3.230769    27
[17]  {Número de Cabezas=[1,3)}                              => {Peso total en libras=[48,135)}                  0.2539683  1.0000000 0.2539683 3.000000    32
[18]  {Peso total en libras=[48,135)}                        => {Número de Cabezas=[1,3)}                        0.2539683  0.7619048 0.3333333 3.000000    32
[19]  {Número de Cabezas=[1,3),                                                                                                                               
       Peso total del número de cabezas (quintales)=1}       => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[20]  {Número de Cabezas=[1,3),                                                                                                                               
       Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]}  => {Peso total en libras=[48,135)}                  0.2222222  1.0000000 0.2222222 3.000000    28
[21]  {Departamento=[12,14],                                                                                                                                  
       Número de Cabezas=[1,3)}                              => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[22]  {Número de Cabezas=[1,3),                                                                                                                               
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2539683  1.0000000 0.2539683 3.000000    32
[23]  {Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2539683  0.7619048 0.3333333 3.000000    32
[24]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3)}                              => {Peso total en libras=[48,135)}                  0.2539683  1.0000000 0.2539683 3.000000    32
[25]  {Clase=4,                                                                                                                                               
       Peso total en libras=[48,135)}                        => {Número de Cabezas=[1,3)}                        0.2539683  0.7619048 0.3333333 3.000000    32
[26]  {Departamento=[12,14],                                                                                                                                  
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total del número de cabezas (quintales)=1}       => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[27]  {Número de Cabezas=[1,3),                                                                                                                               
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[28]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total del número de cabezas (quintales)=1}       => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[29]  {Número de Cabezas=[1,3),                                                                                                                               
       Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6],                                                                                                   
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2222222  1.0000000 0.2222222 3.000000    28
[30]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6]}  => {Peso total en libras=[48,135)}                  0.2222222  1.0000000 0.2222222 3.000000    28
[31]  {Departamento=[12,14],                                                                                                                                  
       Número de Cabezas=[1,3),                                                                                                                               
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[32]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3)}                              => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[33]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2539683  1.0000000 0.2539683 3.000000    32
[34]  {Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2539683  0.7619048 0.3333333 3.000000    32
[35]  {Departamento=[12,14],                                                                                                                                  
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[36]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total del número de cabezas (quintales)=1}       => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[37]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[38]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso vivo promedio (Peso de cada cabeza)=[0.48,0.6],                                                                                                   
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2222222  1.0000000 0.2222222 3.000000    28
[39]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[40]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2142857  1.0000000 0.2142857 3.000000    27
[41]  {Peso total en libras=[48,135),                                                                                                                         
       Peso total del número de cabezas (quintales)=1}       => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[42]  {Departamento=[12,14],                                                                                                                                  
       Peso total en libras=[48,135)}                        => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[43]  {Departamento=[12,14],                                                                                                                                  
       Peso total en libras=[48,135),                                                                                                                         
       Peso total del número de cabezas (quintales)=1}       => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[44]  {Peso total en libras=[48,135),                                                                                                                         
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[45]  {Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Peso total del número de cabezas (quintales)=1}       => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[46]  {Departamento=[12,14],                                                                                                                                  
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[47]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total en libras=[48,135)}                        => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[48]  {Departamento=[12,14],                                                                                                                                  
       Peso total en libras=[48,135),                                                                                                                         
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[49]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Peso total del número de cabezas (quintales)=1}       => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[50]  {Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[51]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[52]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.7297297 0.2936508 2.873311    27
[53]  {Peso total en libras=[48,135)}                        => {Peso total del número de cabezas (quintales)=1} 0.2936508  0.8809524 0.3333333 2.846154    37
[54]  {Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2936508  0.8809524 0.3333333 2.846154    37
[55]  {Clase=4,                                                                                                                                               
       Peso total en libras=[48,135)}                        => {Peso total del número de cabezas (quintales)=1} 0.2936508  0.8809524 0.3333333 2.846154    37
[56]  {Clase=4,                                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2936508  0.8809524 0.3333333 2.846154    37
[57]  {Peso total del número de cabezas (quintales)=1}       => {Peso total en libras=[48,135)}                  0.2936508  0.9487179 0.3095238 2.846154    37
[58]  {Departamento=[12,14],                                                                                                                                  
       Peso total del número de cabezas (quintales)=1}       => {Peso total en libras=[48,135)}                  0.2936508  0.9487179 0.3095238 2.846154    37
[59]  {Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2936508  0.9487179 0.3095238 2.846154    37
[60]  {Clase=4,                                                                                                                                               
       Peso total del número de cabezas (quintales)=1}       => {Peso total en libras=[48,135)}                  0.2936508  0.9487179 0.3095238 2.846154    37
[61]  {Departamento=[12,14],                                                                                                                                  
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2936508  0.9487179 0.3095238 2.846154    37
[62]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total del número de cabezas (quintales)=1}       => {Peso total en libras=[48,135)}                  0.2936508  0.9487179 0.3095238 2.846154    37
[63]  {Clase=4,                                                                                                                                               
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2936508  0.9487179 0.3095238 2.846154    37
[64]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Peso total en libras=[48,135)}                  0.2936508  0.9487179 0.3095238 2.846154    37
[65]  {Número de Cabezas=[1,3)}                              => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27
[66]  {Peso total del número de cabezas (quintales)=1}       => {Número de Cabezas=[1,3)}                        0.2142857  0.6923077 0.3095238 2.725962    27
[67]  {Número de Cabezas=[1,3),                                                                                                                               
       Peso total en libras=[48,135)}                        => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27
[68]  {Departamento=[12,14],                                                                                                                                  
       Peso total del número de cabezas (quintales)=1}       => {Número de Cabezas=[1,3)}                        0.2142857  0.6923077 0.3095238 2.725962    27
[69]  {Número de Cabezas=[1,3),                                                                                                                               
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27
[70]  {Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.6923077 0.3095238 2.725962    27
[71]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3)}                              => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27
[72]  {Clase=4,                                                                                                                                               
       Peso total del número de cabezas (quintales)=1}       => {Número de Cabezas=[1,3)}                        0.2142857  0.6923077 0.3095238 2.725962    27
[73]  {Número de Cabezas=[1,3),                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27
[74]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total en libras=[48,135)}                        => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27
[75]  {Departamento=[12,14],                                                                                                                                  
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.6923077 0.3095238 2.725962    27
[76]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total del número de cabezas (quintales)=1}       => {Número de Cabezas=[1,3)}                        0.2142857  0.6923077 0.3095238 2.725962    27
[77]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27
[78]  {Clase=4,                                                                                                                                               
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.6923077 0.3095238 2.725962    27
[79]  {Clase=4,                                                                                                                                               
       Número de Cabezas=[1,3),                                                                                                                               
       Peso total en libras=[48,135),                                                                                                                         
       Año=[2022,2023]}                                      => {Peso total del número de cabezas (quintales)=1} 0.2142857  0.8437500 0.2539683 2.725962    27
[80]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Peso total del número de cabezas (quintales)=1,                                                                                                        
       Año=[2022,2023]}                                      => {Número de Cabezas=[1,3)}                        0.2142857  0.6923077 0.3095238 2.725962    27
[81]  {Departamento=[12,14],                                                                                                                                  
       Vísceras=0}                                           => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[82]  {Departamento=[12,14],                                                                                                                                  
       Cuero=0}                                              => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[83]  {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Cuero=0}                                              => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[84]  {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0}                                           => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[85]  {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[86]  {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[87]  {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[88]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0}                                           => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[89]  {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Cuero=0}                                              => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[90]  {Departamento=[12,14],                                                                                                                                  
       Cuero=0,                                                                                                                                               
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[91]  {Departamento=[12,14],                                                                                                                                  
       Cuero=0,                                                                                                                                               
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[92]  {Departamento=[12,14],                                                                                                                                  
       Cuero=0,                                                                                                                                               
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[93]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Cuero=0}                                              => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[94]  {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0}                                              => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[95]  {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[96]  {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[97]  {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[98]  {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Cuero=0}                                              => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[99]  {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[100] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[101] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[102] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0}                                           => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[103] {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[104] {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[105] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[106] {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[107] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[108] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[109] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[110] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[111] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[112] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Cuero=0}                                              => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[113] {Departamento=[12,14],                                                                                                                                  
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[114] {Departamento=[12,14],                                                                                                                                  
       Cuero=0,                                                                                                                                               
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[115] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Cuero=0,                                                                                                                                               
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[116] {Departamento=[12,14],                                                                                                                                  
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[117] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Cuero=0,                                                                                                                                               
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[118] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Cuero=0,                                                                                                                                               
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[119] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[120] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[121] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[122] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0}                                              => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[123] {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[124] {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[125] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[126] {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[127] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[128] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[129] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[130] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[131] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[132] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[133] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[134] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[135] {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[136] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[137] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[138] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[139] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[140] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[141] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[142] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[143] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[144] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[145] {Departamento=[12,14],                                                                                                                                  
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[146] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[147] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Cuero=0,                                                                                                                                               
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[148] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[149] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[150] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[151] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[152] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[153] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0}                                             => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[154] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[155] {Departamento=[12,14],                                                                                                                                  
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[156] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[157] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[158] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[159] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[160] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[161] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[162] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[163] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[164] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[165] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[166] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[167] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[168] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[169] {Departamento=[12,14],                                                                                                                                  
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[170] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0}                                        => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[171] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[172] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[173] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Vísceras=0,                                                                                                                                            
       Cuero=0,                                                                                                                                               
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         
       Año=[2022,2023]}                                      => {Carne y Hueso=1}                                0.2222222  0.5957447 0.3730159 2.680851    28
[174] {Departamento=[12,14],                                                                                                                                  
       Clase=4,                                                                                                                                               
       Sebo=0,                                                                                                                                                
       Vísceras=0,                                                                                                                                            
       Sangre=0,                                                                                                                                              
       Desperdicio=0,                                                                                                                                         