# Nombre: Cynthia Lizeth Calixtro Ames 20150456D
# Respuesta4: El codigo muestra las respuestas a los
# items del ejercicio 4

# a)

f1 <- function(x = {y <- 1;2}, y = 0)
{
  x + y
}

f1()
# produce 3 ya que a y le asigna el valor 1
# y a x el valor 2



# b)

trims <- c(0, 0.1, 0.2, 0.5)
x <- rcauchy(100)

# Las invocaciones a lapply son equivalente ya que
lapply(trims,function(trim){mean(x,trim = trim)})
lapply(trims, mean, x = x)


# c)
w <- c(4,5,NA,8,10,NA)
x <- 7:12
y <- c(NA,12,NA,13,59,10)
z <- 1:6

mi_matriz <- rbind(w,x,y,z)
mi_matriz

# solucion con for

# solucion con apply
min(which(apply(mi_matriz,1,function(x){sum(is.na(x))==0})))
