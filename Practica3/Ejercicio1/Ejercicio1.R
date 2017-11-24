# Nombre: Cynthia Lizeth Calixtro Ames 20150456D
# Respuesta1: El codigo muestra el uso de lapply y paste
# para resolver el ejercicio 1

f3 <- list("a",
           c("b","c","d","e"),
           "f",
           c("g","h","i"))

# paste actua sobre todos los elementos de la lista
lapply(f3,function(x){paste(x,"!",sep=" ")})