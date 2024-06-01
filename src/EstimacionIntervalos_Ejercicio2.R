# Crear la muestra original 'longs'
set.seed(123)  # Fijar la semilla para reproducibilidad
longs <- rnorm(100, mean = 50, sd = 5)  # Muestra con media 50 y desviación estándar 5

# Crear la primera variante con una cuasi-varianza mayor
variant1 <- rnorm(100, mean = 50, sd = 10)  # Muestra con media 50 y desviación estándar 10

# Crear la segunda variante con una cuasi-varianza menor
variant2 <- rnorm(100, mean = 50, sd = 2)  # Muestra con media 50 y desviación estándar 2

# Verificar las medias y desviaciones estándar de las muestras
mean(longs)
mean(variant1)
mean(variant2)

sd(longs)
sd(variant1)
sd(variant2)
