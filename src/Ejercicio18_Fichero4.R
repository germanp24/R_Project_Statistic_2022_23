#------------------FORMA 1-----------------------------------------------
#a)Probabilidad de que no haya defectos

#Probabilidad de defecto en mil metros:
probabilidad_defecto <- 2/1000
#Probabilidad de no defecto en mil metros
probabilidad_no_defecto <- 1 - probabilidad_defecto
#Probabilidad de no defectos en 3000 metros
probabilidad_no_defecto_3000 <- probabilidad_no_defecto^3 
porcentaje <- probabilidad_no_defecto_3000 * 100

#Impresion de resultado
print(paste("Probabilidad sin Referencia a distribuciones de R (Sin defectos): ", round(porcentaje, 2)))


#b)Contenga exactamente 5 defectos
# Número de combinaciones posibles de elegir 5 metros con defecto de los 3000 metros totales
numero_combinaciones <- choose(3000, 5)  
# Probabilidad de que haya exactamente 5 defectos
probabilidad_5_defectos <- numero_combinaciones * (probabilidad_defecto^5) * ((1 - probabilidad_defecto)^(3000-5))  

porcentaje5defectos <- round(probabilidad_5_defectos * 100, 4)
print(paste("Probabilidad sin Referencia a distribuciones de R (5 defectos): ", porcentaje5defectos))

#c) Contenga menos de 4 defectos



#------------------FORMA 2-----------------------------------------------
#POISSON
#a)Probabilidad de que no haya defectos
#Calculamos el parametro de la distribucion
lambda <- (2/1000) * 3000
ppa1 <- dpois(0, lambda)
x <- 0:n
prob_binomial <- dbinom(x,3000,2/1000)
#b)Contenga exactamente 5 defectos
ppa5 <- dpois(5, lambda)
#c) 4 o menos fallas
ppa4menos <- ppois(4, lambda)

#BINOMIAL
#longitud
n <- 3000
#Probabilidad de fallo
p <- 2/1000
#a)Probabilidad de que no haya defectos
pb1 <- dbinom(0,n,p)
#b)Contenga exactamente 5 defectos
pb5 <- dbinom(5,n,p)
#c) 4 o menos fallas
pb4menos <- pbinom(4,n,p)

#IMPRESION
print("SIN DEFECTOS")
print(paste("Probabilidad Binomial: ", round(pb1*100,4)))
print(paste("Probabilidad Poisson: ", round(ppa1*100,4)))
print("5 DEFECTOS")
print(paste("Probabilidad Binomial: ", round(pb5*100,4)))
print(paste("Probabilidad Poisson: ", round(ppa5*100,4)))
print("4 O MENOS DEFECTOS")
print(paste("Probabilidad Binomial: ", round(pb4menos*100,4)))
print(paste("Probabilidad Poisson: ", round(ppa4menos*100,4)))

#GRAFICAS
p <- 2/1000
n <- 3
x <- 0:n
binomial_masa <- dbinom(x, 3, 2/1000)
plot(x, binomial_masa, type = 'h', lwd = 2, xlab = "Numero de fallos", ylab = "Probabilidad", main = "Distribucion Binomial de Masa")


binomial_cumulativa <- pbinom(x, n, p)
plot(x, binomial_cumulativa, type = "s", lwd = 2, xlab = "Número de fallos", ylab = "Probabilidad acumulada",
     main = "Distribución Binomial Acumulativa")

poisson_masa <- dpois(x, n * p)
plot(x, poisson_masa, type = "h", lwd = 2, xlab = "Número de fallos", ylab = "Probabilidad",
     main = "Distribución Poisson de Masa")

poisson_cumulativa <- ppois(x, n * p)
plot(x, poisson_cumulativa, type = "s", lwd = 2, xlab = "Número de fallos", ylab = "Probabilidad acumulada",
     main = "Distribución Poisson Acumulativa")


#------------------FORMA 3-----------------------------------------------
n <- 3000
#Probabilidad de fallo
p <- 2/1000

#Probabilidad acumulativa de 0 fallos
prob_acum_no_fallos <- pbinom(0, n, p)
#Probabilidad acumulativa de 5 fallos
prob_acum_5_fallos <- pbinom(5, n, p)
#Probabilidad acumulativa de 4 fallos
prob_acum_4_o_menos_fallos <- pbinom(4, n, p)

#IMPRESION
print(paste("Probabilidad acumulativa de 0 fallos: ", round(prob_acum_no_fallos*100,4)))
print(paste("Probabilidad acumulativa de 5 fallos: ", round(prob_acum_5_fallos*100,4)))
print(paste("Probabilidad acumulativa de 4 fallos: ", round(prob_acum_4_o_menos_fallos*100,4)))

#GRAFICAS
p <- 2/1000
n <- 3
x <- 0:n
