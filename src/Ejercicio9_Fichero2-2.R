# Datos
GDP <- c(4139, 5101, 6018, 7234, 9178, 11224, 13156)
consumoInteriorPrivado <- c(2968, 3635, 4288, 5226, 6649, 8065, 9476)

# Crear el grafico de dispersion
plot(GDP, consumoInteriorPrivado, xlab = "GDP", ylab = "Consumo Interior Privado",
     main = "Relación entre GDP y Consumo Interior Privado",
     pch = 16, col = "blue")

# Aniadir una linea de tendencia lineal
lm_model <- lm(consumoInteriorPrivado ~ GDP)
abline(lm_model, col = "red")

# Calculo del coeficiente de correlación lineal
correlation <- cor(GDP, consumoInteriorPrivado)

# Calculo del coeficiente de determinación
r_squared <- summary(lm_model)$r.squared

# Imprimir resultados
print(paste("Coeficiente de correlación lineal:", correlation))
print(paste("R cuadrado:", r_squared))

# Obtener la recta de regresion
regression_line <- lm_model$coefficients[1] + lm_model$coefficients[2] * GDP

# Imprimir la ecuacion de la recta de regresion
print(paste("Recta de regresión:", round(lm_model$coefficients[1], 2), "+",
            round(lm_model$coefficients[2], 2), "* GDP"))

# Valores de GDP para estimar el Consumo Interior Privado
GDP_estimado <- c(10000, 150000)

# Estimación del Consumo Interior Privado
consumoInteriorPrivado_estimado <- lm_model$coefficients[1] + lm_model$coefficients[2] * GDP_estimado

# Imprimir los resultados
print(paste("Consumo Interior Privado estimado para GDP =", GDP_estimado[1],
            "euros:", consumoInteriorPrivado_estimado[1]))
print(paste("Consumo Interior Privado estimado para GDP =", GDP_estimado[2],
            "euros:", consumoInteriorPrivado_estimado[2]))