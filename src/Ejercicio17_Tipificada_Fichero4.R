# Parámetros 
media <- 110
desviacion <- 20

# Tamaño de la muestra
tamaño_muestra <- 64

# Valor calcular la probabilidad
valor <- 115

# Cálculo de la desviación estándar de la media 
desviacion_media <- desviacion / sqrt(tamaño_muestra)

# Cálculo de la probabilidad  no tipificada
probabilidad <- round(1 - pnorm(valor, mean = media, sd = desviacion_media), 4)

# Imprimir el resultado
probabilidad