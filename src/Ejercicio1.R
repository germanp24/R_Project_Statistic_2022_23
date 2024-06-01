tiempoReparacion <- c(159, 280, 101, 212, 224, 379, 179, 264)
costesReparacion <- c(23.12, 43.15, 34.95, 54.23, 65.65, 22.45, 45.78, 87.65)

min(tiempoReparacion)
max(tiempoReparacion)

which(costesReparacion == min(costesReparacion))
which(costesReparacion == max(costesReparacion))

tiempoReparacionDias <- tiempoReparacion/24

tiempoReparacionDias[-which(tiempoReparacionDias == min(tiempoReparacionDias))]
tiempoReparacionDias[-which(tiempoReparacionDias == max(tiempoReparacionDias))]

reparaciones <- data.frame(tiempoReparacion, costesReparacion)

reparaciones[seq(from = 1, to = 8, by = 2),]