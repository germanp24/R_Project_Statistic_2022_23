# Probabilidad de que falle un componente individual
p <- 0.2

# Número total de componentes
n <- 10

# Calculando la probabilidad utilizando la función cumulativa de la distribución binomial
probabilidad_cum_binomial <- round(1 - pbinom(1, n, p, lower.tail = FALSE), 4)

# Calculando la probabilidad utilizando la función cumulativa de la distribución Poisson (aproximación a la binomial)
lambda <- n * p
probabilidad_cum_poisson <- round(1 - ppois(1, lambda, lower.tail = FALSE), 4)

# Imprimiendo los resultados
print(paste("Probabilidad Cumulativa Binomial: ", probabilidad_cum_binomial))
print(paste("Probabilidad Cumulativa Poisson: ", probabilidad_cum_poisson))