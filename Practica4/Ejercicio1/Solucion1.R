# Nombre: Cynthia Lizeth Calixtro Ames 20150456D
# Respuesta1: El codigo muestra el uso de las funciones 
# rnorm, sample y apply junto con la manipulacion de un
# dataframe para crear 9 generaciones de una poblacion.
# Ademas, se hace uso de la funcion hist para dibujar 
# la distribucion de las alturas masculinas en cada 
# generacion.

# Alturas de la generacion 1
popular <- data.frame(m = rnorm(100, 160, 20), f = rnorm(100, 160, 20))

# Funcion que devuelve las alturas de la proxima generacion
prox.gen <- function(popular)
{
  popular$m <- sample(popular$m)
  popular$m <- apply(popular, 1, mean)
  popular$f <- popular$m
  
  return(popular)
}

# Generando las alturas de 8 generaciones
for (i in 1:9)
{
  message("Generacion ",i,":")
  
  if (i != 1) {popular <- prox.gen(popular)}
  
  print(popular)
  
  hist(x = popular$m,                # alturas
       main = paste("Generacion",i), # titulo del histograma
       ylab = "Frecuencia",          # etiqueta del eje y
       xlab = "Alturas masculinas"   # tiqueta del eje x
  )
}