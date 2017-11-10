# Nombre: Cynthia Calixtro Ames 20150456D
# Respuesta1: El codigo muestra la construccion de la matriz de Hankel.

#Construccion de la matriz M
#Repetimos el vector 1:5 un numero de veces igual que el orden de la matriz
#y lo sumamos componente a componente con el vector rep(0:4,each=5)
#Esto es como si tuvieramos una matriz de orden 5x5 con filas iguales al
#vector 1:5 y sumaramos cada elemento de la primera fila con 0s
#la segunda con 1s, la tercera con 2s,...
M <- matrix(rep(1:5,5)+rep(0:4,each=5),nrow=5)


#Funcion FunHankel:
# Toma un vector como parametro y retorna la matriz Hankel de esa secuencia
FunHankel <- function(x)
{
  n = (length(x)+1)/2 #Orden de la matriz de Hankel
  
  #Los indices se trabajan de manera analoga a
  #la construccion de la matriz M
  y <- x[rep(1:n,n)+rep(0:(n-1),each=n)]  
  
  matrix(y,nrow = n)
}

#Construccion de la matriz M con la funcion FunHankel
FunHankel(1:9)

#Construccion de la matriz MHankel 10x10
FunHankel(1:19)

#Construccion de la matriz Hankel 12x12
FunHankel(1:23)