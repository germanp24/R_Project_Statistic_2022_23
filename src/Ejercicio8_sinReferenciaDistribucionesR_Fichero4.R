# Función para calcular la probabilidad de que fallen al menos dos componentes
probabilidad_falla_dos_o_mas <- function(p, n) {
  prob_dos_o_mas <- 0
  
  # Iterar desde 2 hasta el número total de componentes
  for (i in 2:n) {
    # Calcular la probabilidad de cada combinación de fallos
    probabilidad_combinacion <- choose(n, i) * p^i * (1-p)^(n-i)
    # Sumar las probabilidades de cada combinación
    prob_dos_o_mas <- prob_dos_o_mas + probabilidad_combinacion
  }
  
  return(prob_dos_o_mas)
}

# Probabilidad de que falle un componente individual
p <- 0.2

# Número total de componentes
n <- 10

# Calculando la probabilidad utilizando la función personalizada
probabilidad <- round(probabilidad_falla_dos_o_mas(p, n), 4)

# Imprimiendo el resultado
print(paste("Probabilidad sin Referencia a Distribuciones de R: ", probabilidad))