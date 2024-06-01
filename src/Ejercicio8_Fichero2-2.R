# Datos de los ultimos cinco anios
visitantes_anuales <- c(104000, 103700, 103400, 103100, 103000)  # Número de visitantes anuales
dias_lluvia <- c(39, 42, 44, 46, 49)  # Número de días de lluvia al año

# Calculo de la variabilidad relativa
coef_var_visitantes <- sd(visitantes_anuales) / mean(visitantes_anuales) * 100
coef_var_lluvia <- sd(dias_lluvia) / mean(dias_lluvia) * 100

# Imprimir resultados
print(paste("Coeficiente de variacion de visitantes anuales:", coef_var_visitantes))
print(paste("Coeficiente de variacion de dias de lluvia al año:", coef_var_lluvia))

# Calculo del coeficiente de correlacion de Pearson
correlation <- cor(visitantes_anuales, dias_lluvia)

# Imprimir el coeficiente de correlacion
print(paste("Coeficiente de correlacion de Pearson:", correlation))

# Ajuste del modelo de regresion lineal
modelo <- lm(visitantes_anuales ~ dias_lluvia)

# Prediccion para un año de 56 días de lluvia
prediccion <- round(predict(modelo, data.frame(dias_lluvia = 56)))

# Imprimir la prediccion
print(paste("Número de visitantes predicho para un año de 56 días de lluvia:", prediccion))

# Calculo del R cuadrado
r_cuadrado <- summary(modelo)$r.squared

# Proporcion de variabilidad no explicada
variabilidad_no_explicada <- 1 - r_cuadrado

# Imprimir resultados
print(paste("Proporción de variabilidad no explicada por el modelo de regresión:", variabilidad_no_explicada))