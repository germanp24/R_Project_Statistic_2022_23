#a)
n <- 400
media <- 172
varianza <- 16
# Cálculo del intervalo de confianza
alpha <- 0.05
z <- qnorm(1 - alpha/2)
inferior <- media - z * sqrt(varianza/n)
superior <- media + z * sqrt(varianza/n)
# Resultado
intervalo_400 <- c(inferior, superior)
intervalo_400

#b)
n <- 40
media <- 172
varianza <- 16
# Cálculo del intervalo de confianza
alpha <- 0.05
z <- qnorm(1 - alpha/2)
inferior <- media - z * sqrt(varianza/n)
superior <- media + z * sqrt(varianza/n)
# Resultado
intervalo_40 <- c(inferior, superior)
intervalo_40
