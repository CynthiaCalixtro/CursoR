# Nombre: Cynthia Lizeth Calixtro Ames 20150456D
# Respuesta2: El codigo muestra el uso de la funcion scan
# para leer un archivo

data = scan(file = "entrada.txt",  what = list(0, 0, 0, ""))

T <- data[[1]]
N <- data[[2]]
k <- data[[3]]
Schar <- data[[4]]
Svec <- as.numeric(unlist(strsplit(Schar, "")))
cont <- 0

mcm <- function(x,y) 
{
  r <- x%%y;
  return(ifelse(r, mcm(y, r), y))
}

for(i in 1:length(Svec))
{
  for (j in 1:length(Svec))
  {
    if (Svec[i] == 1 & Svec[j] == 1 & abs(i-j) <= k )
    { cont <- cont + 1 }
  }
}
redu <- mcm(N*N,cont)

message(cont/redu, "/", (N*N)/redu)


