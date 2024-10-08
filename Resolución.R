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











####################### PROBLEMA 2 ###########################
# Un inversionista está evaluando invertir en uno de los cuatro 
# siguientes activos financieros bajo tres posibles escenarios 
# del mercado: mercado alcista, mercado estable, y mercado 
# bajista. 
#
# Los rendimientos proyectados (en millones de euros) para los 
# tipos de mercados nombrados anteriormente son los siguientes:
# ACCIONES TECNOLÓGICAS: 15, 7, 1
# BONOS DEL GOBIERNO: 5, 5, 5
# FONDOS DE BIENES RAÍCES: 10, 6, 2
# CRIPTOMONEDAS: 25, 3, 1
#
# ¿Cuál sería la opción que usted le recomendaría al inversionista?
