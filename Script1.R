datos <- read.csv("datos.csv")
mean(datos$Edad)
sum(datos$Edad)

table(datos$Genero)


str(datos)
summary(datos)

datos$Mayor25 <- datos$Edad > 25
write.table(datos,"datos_nuevos.csv", quote = FALSE, sep = ":", row.names = FALSE)

class(datos$Mayor25)
x <- 4.5
class(datos)


