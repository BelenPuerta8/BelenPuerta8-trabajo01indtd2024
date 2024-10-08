####################### PROBLEMA 1 ###########################
# Aplicar los criterios de decisión bajo incertidumbre a la 
# siguiente matriz de valores: 
#
####### e1 ### e2 ### e3 ##
# d1  #  7   #  3   #  5  #
# d2  #  4   #  2   #  6  #
# d3  #  1   #  9   #  3  #
# d4  #  8   #  1   #  0  #
###########################

source("teoriadecision_funciones_incertidumbre.R")

datos = crea.tablaX(c(7, 3, 5,
                      4, 2, 6,
                      1, 9, 3,
                      8, 1, 0), numalternativas = 4, numestados = 3)

datos


##### CRITERIO PESIMISTA (WALD) #####
## Caso favorable ##
p1_pes_FAV = criterio.Wald(datos,T)
p1_pes_FAV
names(p1_pes_FAV$AlternativaOptima) # La mejor alternativa es d1


## Caso desfavorable ##
p1_pes_DESFAV = criterio.Wald(datos,F)
p1_pes_DESFAV
names(p1_pes_DESFAV$AlternativaOptima) # La mejor alternativa es d2





##### CRITERIO OPTIMISTA #####
## Caso favorable ##
p1_opt_FAV = criterio.Optimista(datos,T)
p1_opt_FAV
names(p1_opt_FAV$AlternativaOptima) # La mejor alternativa es d3


## Caso desfavorable ##
p1_opt_DESFAV = criterio.Optimista(datos,F)
p1_opt_DESFAV
names(p1_opt_DESFAV$AlternativaOptima) # La mejor alternativa es d4





##### CRITERIO DE HURWICZ #####
## Caso favorable ##
p1_hur_FAV = criterio.Hurwicz(datos,T)
p1_hur_FAV
names(p1_hur_FAV$AlternativaOptima) # La mejor alternativa es d3


## Caso desfavorable ##
p1_hur_DESFAV = criterio.Hurwicz(datos,F)
p1_hur_DESFAV
names(p1_hur_DESFAV$AlternativaOptima) # La mejor alternativa es d1





##### CRITERIO DE SAVAGE #####
## Caso favorable ##
p1_sav_FAV = criterio.Savage(datos,T)
p1_sav_FAV
names(p1_sav_FAV$AlternativaOptima) # La mejor alternativa es d1


## Caso desfavorable ##
p1_sav_DESFAV = criterio.Savage(datos,F)
p1_sav_DESFAV
names(p1_sav_DESFAV$AlternativaOptima) # La mejor alternativa es d1 y d2





##### CRITERIO DE LAPLACE #####
## Caso favorable ##
p1_lap_FAV = criterio.Laplace(datos,T)
p1_lap_FAV
names(p1_lap_FAV$AlternativaOptima) # La mejor alternativa es d1


## Caso desfavorable ##
p1_lap_DESFAV = criterio.Laplace(datos,F)
p1_lap_DESFAV
names(p1_lap_DESFAV$AlternativaOptima) # La mejor alternativa es d4






##### CRITERIO DEL PUNTO IDEAL #####
## Caso favorable ##
p1_pid_FAV = criterio.PuntoIdeal(datos,T)
p1_pid_FAV
names(p1_pid_FAV$AlternativaOptima) # La mejor alternativa es d1


## Caso desfavorable ##
p1_pid_DESFAV = criterio.PuntoIdeal(datos,F)
p1_pid_DESFAV
names(p1_pid_DESFAV$AlternativaOptima) # La mejor alternativa es d2













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
