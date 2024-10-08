####################### PROBLEMA 1 ###########################
# Aplicar los criterios de decisión bajo incertidumbre a la  #
# siguiente matriz de valores:                               #
#                                                            #
#            ################################                #
#            #########  e1  #  e2  #  e3 ####                #         
#            ################################                #
#            ## d1  ##  5   #  3   #  -1  ###                #
#            ## d2  ##  12  #  6   #  6   ###                #
#            ## d3  ##  10  #  4   #  8   ###                #
#            ## d4  ##  13  #  4   #  1   ###                #
#            ## d5  ##  5   #  8   #  10  ###                #
#            ################################                #
#                                                            #
#  Resolver primero para el caso FAVORABLE (beneficios) y,   #
#  posteriormente, para el caso DESFAVORABLE (costos).       #
#                                                            #
##############################################################

source("teoriadecision_funciones_incertidumbre.R")

datos = crea.tablaX(c(5, 3, -1,  
                      12, 6, 6,
                      10, 4, 8,
                      13, 4, 1,
                      5, 8, 10), numalternativas = 5, numestados = 3)

datos


##########################
##### CASO FAVORABLE #####
##########################

### CRITERIO PESIMISTA (WALD) ###
p1_pes_FAV = criterio.Wald(datos,T)
p1_pes_FAV
names(p1_pes_FAV$AlternativaOptima) # La mejor decisión es la alternativa d2.



##### CRITERIO OPTIMISTA #####
p1_opt_FAV = criterio.Optimista(datos,T)
p1_opt_FAV
names(p1_opt_FAV$AlternativaOptima) # La mejor decisión es la alternativa d4.



##### CRITERIO DE HURWICZ #####
p1_hur_FAV = criterio.Hurwicz(datos,T)
p1_hur_FAV
names(p1_hur_FAV$AlternativaOptima) # La mejor decisión es la alternativa d4.



##### CRITERIO DE SAVAGE #####
p1_sav_FAV = criterio.Savage(datos,T)
p1_sav_FAV
names(p1_sav_FAV$AlternativaOptima) # La mejor decisión son las alternativas d2 y d3.



##### CRITERIO DE LAPLACE #####
p1_lap_FAV = criterio.Laplace(datos,T)
p1_lap_FAV
names(p1_lap_FAV$AlternativaOptima) # La mejor decisión es la alternativa d2.



##### CRITERIO DEL PUNTO IDEAL #####
p1_pid_FAV = criterio.PuntoIdeal(datos,T)
p1_pid_FAV
names(p1_pid_FAV$AlternativaOptima) # La mejor decisión es la alternativa d2.


## CONCLUSIÓN FINAL ##
# En el escenario favorable, podemos observar que mayoritariamente la
# alternativa d2 es la más elegida.





#############################
##### CASO DESFAVORABLE #####
#############################

### CRITERIO PESIMISTA (WALD) ###
p1_pes_DESFAV = criterio.Wald(datos,F)
p1_pes_DESFAV
names(p1_pes_DESFAV$AlternativaOptima) # La mejor decisión es la alternativa d1.



##### CRITERIO OPTIMISTA #####
p1_opt_DESFAV = criterio.Optimista(datos,F)
p1_opt_DESFAV
names(p1_opt_DESFAV$AlternativaOptima) # La mejor decisión es la alternativa d1.



##### CRITERIO DE HURWICZ #####
p1_hur_DESFAV = criterio.Hurwicz(datos,F)
p1_hur_DESFAV
names(p1_hur_DESFAV$AlternativaOptima) # La mejor decisión es la alternativa d2.



##### CRITERIO DE SAVAGE #####
p1_sav_DESFAV = criterio.Savage(datos,F)
p1_sav_DESFAV
names(p1_sav_DESFAV$AlternativaOptima) # La mejor decisión es la alternativa d1.



##### CRITERIO DE LAPLACE #####
p1_lap_DESFAV = criterio.Laplace(datos,F)
p1_lap_DESFAV
names(p1_lap_DESFAV$AlternativaOptima) # La mejor decisión es la alternativa d1.



##### CRITERIO DEL PUNTO IDEAL #####
p1_pid_DESFAV = criterio.PuntoIdeal(datos,F)
p1_pid_DESFAV
names(p1_pid_DESFAV$AlternativaOptima) # La mejor decisión es la alternativa d1.


## CONCLUSIÓN FINAL ##
# En el escenario desfavorable, podemos observar que mayoritariamente la
# alternativa d1 es la más elegida.










####################### PROBLEMA 2 ###########################
# Un inversionista ha decidido analizar diversas opciones de 
# inversión, ya que busca maximizar sus ganancias bajo distintos 
# escenarios del mercado. Tras meses de estudio y consultas con 
# expertos financieros, ha reducido sus opciones a cuatro activos 
# financieros que, según su análisis, presentan distintas 
# oportunidades de rendimiento. 
# 
# Ha identificado tres posibles escenarios del mercado: mercado 
# alcista, en el que se espera un crecimiento considerable de la 
# economía; mercado estable, donde los rendimientos se mantendrán 
# sin grandes cambios; y mercado bajista, en el que la economía 
# enfrentará dificultades.
# 
# Con base en las proyecciones actuales, los rendimientos 
# estimados para cada activo bajo estos escenarios, expresados en 
# millones de euros, son los siguientes:
#   
# *Acciones tecnológicas: en un escenario alcista generarían 15 
#                         millones, en un mercado estable producirían 
#                         7 millones, y en un mercado bajista solo 
#                         darían 1 millón. Este tipo de activo se ha 
#                         caracterizadompor su enorme potencial en épocas 
#                         de bonanza.
# 
# *Bonos del gobierno: se proyecta que generen un rendimiento 
#                      constante de 5 millones sin importar el estado 
#                      del mercado. Se consideran una opción de bajo 
#                      riesgo, especialmente en tiempos de incertidumbre, 
#                      debido a su estabilidad.
# 
# *Fondos de bienes raíces: bajo un mercado alcista podrían proporcionar 
#                           un rendimiento de 10 millones, en un mercado 
#                           estable 6 millones, y en un escenario bajista 
#                           2 millones. 
# 
# * Criptomonedas: en un mercado alcista su rentabilidad podría alcanzar 
#                  los 25 millones, en un mercado estable solo generarían 
#                  3 millones, y en un mercado bajista apenas 1 millón. 
#                  Este activo es conocido por su alta volatilidad.
# 
# Dado este panorama y los rendimientos proyectados, ¿cuál sería la opción 
# más adecuada que recomendarías al inversionista?
######################################################################

datos2 = crea.tablaX(c(15, 7, 1,
                       5,  5, 5,
                       10, 6, 2,
                       25, 3, 1), numalternativas = 4, numestados = 3)
datos2

Alternativa = criterio.Todos(datos2, favorable = T) # El inversionista tiene margen de elección para buscar maximizar ganancias, lo que indica un problema en una situación favorable.
Alternativa

############# ################ SOLUCIÓN ###################################
#                 e1 e2 e3 Wald Optimista Hurwicz Savage Laplace Punto Ideal
# d1              15  7  1    1        15     5.2     10   7.667      10.770
# d2               5  5  5    5         5     5.0     20   5.000      20.100
# d3              10  6  2    2        10     4.4     15   6.000      15.330
# d4              25  3  1    1        25     8.2      4   9.667       5.657
# iAlt.Opt (fav.) -- -- --   d2        d4      d4     d4      d4          d4
############################################################################
# Podemos observar que, mayoritariamente la mejor alternativa serían las 
# criptomonedas. Tan solo en el criterio de Wald, se obtiene que la mejor
# alternativa serían los bonos del gobierno.
############################################################################