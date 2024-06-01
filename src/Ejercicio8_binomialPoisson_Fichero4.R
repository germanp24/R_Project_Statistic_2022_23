# Probabilidad de que falle un componente individual
p <- 0.2

# Numero total de componentes
n <- 10

# Calculando la probabilidad utilizando la distribucion binomial
probabilidad_binomial <- round((1 - pbinom(1, n, p)), 4)

# Calculando la probabilidad utilizando la distribucion Poisson (aproximacion a la binomial)
lambda <- n * p
probabilidad_poisson <- round(1 - ppois(1, lambda), 4)

# Imprimiendo los resultados
print(paste("Probabilidad Binomial: ", probabilidad_binomial))
print(paste("Probabilidad Poisson: ", probabilidad_poisson))


# Crear secuencia de valores para el eje x
x <- 0:n

# Distribución binomial de masa
binomial_masa <- dbinom(x, n, p)

# Distribución binomial acumulativa
binomial_cumulativa <- pbinom(x, n, p)

# Distribución Poisson de masa
poisson_masa <- dpois(x, n * p)

# Distribución Poisson acumulativa
poisson_cumulativa <- ppois(x, n * p)

# Gráfico de distribución binomial de masa
plot(x, binomial_masa, type = "h", lwd = 2, xlab = "Número de fallos", ylab = "Probabilidad",
     main = "Distribución Binomial de Masa")

# Gráfico de distribución binomial acumulativa
plot(x, binomial_cumulativa, type = "s", lwd = 2, xlab = "Número de fallos", ylab = "Probabilidad acumulada",
     main = "Distribución Binomial Acumulativa")

# Gráfico de distribución Poisson de masa
plot(x, poisson_masa, type = "h", lwd = 2, xlab = "Número de fallos", ylab = "Probabilidad",
     main = "Distribución Poisson de Masa")

# Gráfico de distribución Poisson acumulativa
plot(x, poisson_cumulativa, type = "s", lwd = 2, xlab = "Número de fallos", ylab = "Probabilidad acumulada",
     main = "Distribución Poisson Acumulativa")