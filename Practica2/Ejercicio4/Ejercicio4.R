# Nombre: Cynthia Calixtro Ames 20150456D
# Respuesta4: El codigo muestra el uso de apply y which para resolver el ejercicio

set.seed(75)
aMat <- matrix( sample(10,size=60,replace = T),nr = 6 )
aMat

# Parte a)
# Trabajamos sobre las filas y le aplicamos la funcion suma con dicha condicion
apply(aMat,1,function(x){sum(x>4)})

# Parte b)
# Trabajamos sobre las filas para hallar el numero de ocurrencias del 7 en las filas
cantidad.ocurrencias7 <- apply(aMat,1,function(x){sum(x==7)}) 
#Muestra los indices donde se cumple la condicion
which(cantidad.ocurrencias7==2)

# Parte c)

# Repeticiones permitidas
sumXcol <- apply(aMat,2,sum)
#construyo una matriz donde el elemento i,j es la suma de la fila i con la fila j
sum2col <- matrix (sumXcol + rep(sumXcol,each=10),nrow = 10,byrow = TRUE)
#Muestra los indices donde se cumple la condicion
which(sum2col > 75,arr.ind = TRUE)

# Repeticiones permitidas
#Para solo contar los elementos sobre la diagonal principal
#para asi no contar las repeticiones
sum2col[lower.tri(sum2col,diag=TRUE)] <- 0 
#Muestra los indices donde se cumple la condicion
which(sum2col > 75,arr.ind = TRUE)
