data <- scan("src/temperaturas.txt", what = "numeric")
data <- as.numeric(data)

hist(data, main = "Histograma de temperaturas", xlab = "Temperaturas", ylab = "Frecuencia")

numObservaciones <- length(data)
amplitud <- diff(range(data)) # Diferencia entre valorMax y valorMin
numClases <- round(1 + log2(numObservaciones)) # Regla de Sturges

# Calculo frecuencias relativas y absolutas
fi = table(cut(data, breaks = numClases))
Fi = cumsum(fi)
hi = prop.table(fi)
Hi = cumsum(hi)
pi = (fi/numObservaciones)*100
Pi = cumsum(pi)

# Creacion e impresion de la tabla
tablaFrecuencias <- data.frame('fi'=c(fi), 'Fi'=c(Fi), 'hi'=c(hi), 'Hi'=c(Hi), 'pi'=c(pi), 'Pi'=c(Pi))
tablaFrecuencias