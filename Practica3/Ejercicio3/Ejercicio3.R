# Nombre: Cynthia Lizeth Calixtro Ames 20150456D
# Respuesta3: El codigo muestra el uso de lapply

geolista <- function(mi_lista)
{
  #devuelve la media geometrica
  geom <- function(x){prod(x)**(1/length(x))}
  
  lapply(mi_lista,
         ifelse(!is.matrix(x), geom, apply(x,1,geom))
         )
}

f4 <- list(1:3,
           matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),4,2),
           matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),2,4))

geolista(f4)