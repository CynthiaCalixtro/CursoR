# Nombre: Cynthia Lizeth Calixtro Ames 20150456D
# Respuesta3: El codigo muestra la respuesta del ejercicio 3.

# match(a,x) es equivalente a min(which(x == a)), para a escalar y x vector
a <- 5
x <- c(5,3,5,9,5)
which(x == a) # retorna las posiciones donde los elementos de x toman el valor de a
min(which(x == a))  # retorna la menor de todas las posiciones, es decir,
                    # retorna la posicion del primer elemento de x cuyo valos sea
                    # el mismo de a.
match(a,x)  # retorna un vector que contiene las primeras posiciones donde coincida
            # el primer argumento en el segundo argumento.





# Hallando los tiempos de ejecucion
y = c(); for(t in 1:100) y[t] = exp(t)
system.time(for(t in 1:100) y[t] = exp(t))

y = exp(1:100)
system.time(exp(1:100))

y = sapply(1:100,exp)  
system.time(sapply(1:100,exp))

# Comparando los tiempos:  
system.time(exp(1:100)) == system.time(sapply(1:100,exp))
system.time(for(t in 1:100) y[t] = exp(t)) > system.time(exp(1:100))





# Famoso trabalenguas "sea_shells"
sea_shells <- c("She", "sells", "sea", "shells", "by", "the", "seashore",
                "The", "shells", "she", "sells", "are", "surely", "seashells",
                "So", "if", "she", "sells", "shells", "on", "the", "seashore",
                "I'm", "sure", "she", "sells", "seashore", "shells")
 
# Calculando el numero de letras de cada palabra
nchar(sea_shells)
