# Nombre: Cynthia Calixtro Ames 20150456D
# Respuesta3: El codigo muestra dos funciones en el cual extraemos elementos de un vector

# Parte a)
primero <-function(x,k=1)
{
  x[1:k] #Extraemos los elementos cuyos indices van del 1 hasta el numero ingresado
}

ultimo <-function(x,k=1)
{
  x[length(x)-(k-1):0] #En los indices trabajamos con una diferencia 
}

# Parte b)
primero2 <-function(x,k=1)
{
  if (k > length(x)) #si la longitud es mayor devuelve el vector
    x
  else
    x[1:k]
}

ultimo2 <-function(x,k=1)
{
  if (k > length(x)) #si la longitud es mayor devuelve el vector
    x
  else
    x[length(x)-(k-1):0]
}

# Parte c)
primero3 <- primero #la funcion primero ya tenia implementado lo que se pide

ultimo3 <- function(x,k=1)
{
  if (k>length(x)) #concatenamos los NA que falten con el vector x
    c(rep(NA,k-length(x)),x)
  else
    x[length(x)-(k-1):0]
}

