# Nombre: Cynthia Lizeth Calixtro Ames 20150456D
# Respuesta4: El codigo muestra la respuesta del ejercicio 4.

tst4 <-function(x){
  if (x < 2) "muy negativo"
  else if (x < 1) "cercano a cero"
  else if (x < 3) "in [1,3)"
  else "large"
}

# Evaluando la funcion tst4 para x = 0
tst4(0) # Como 0 < 2, muestra el mensaje "muy negativo".

# Evaluando la funcion tst4 para x = 0
tst4(Inf) # Como Inf no cumple con ninguna de las condiciones, muestra el mensaje "large".

# Evaluando la funcion tst4 para x = 0
tst4(2) # Como 2 < 3, muestra el mensaje "in in [1,3)".

# Creando la funcion Tst4 que da la misma salida que la funcion anterior, pero se define
# empleando ifelse
Tst4 <- function(x){
  ifelse(x < 2, "muy negativo", ifelse(x<1,"cercano a cero", ifelse(x < 3, "in [1,3)","large")))
}

# Evaluando la funcion Tst4 para c(Inf,3:5)
Tst4(c(Inf,3:5))  # Como ningun elemento de c(Inf,3:5) cumple con ninguna de las condiciones,
                  # muestra el mensaje "large" "large" "large" "large".
