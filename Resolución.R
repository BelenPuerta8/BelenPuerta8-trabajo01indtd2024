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


### CRITERIO PESIMISTA (WALD) ### 
## Caso favorable ##
p1_pes_FAV = criterio.Wald(datos,T)
p1_pes_FAV
names(p1_pes_FAV$AlternativaOptima) # La mejor alternativa es d3


## Caso desfavorable ##
p1_pes_DESFAV = criterio.Wald(datos,F)
p1_pes_DESFAV
names(p1_pes_DESFAV$AlternativaOptima) # La mejor alternativa es d3











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
