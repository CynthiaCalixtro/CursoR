f <- function(x){ #Creamos una funcion f que tome como argumento x
	return (exp(x)-1) #Devolvemos e^x - 1
}

limite_inferior <- -10 #Limite inferior para el Método
limite_superior <- 10 #Limite superior para el Método

#Mientras haya una diferencia mayor o igual a 10^-8, iteramos

while(limite_superior - limite_inferior >=1e-8){
	punto_medio <- (limite_inferior + limite_superior)/2 #Tomammos el punto medio
	if (f(punto_medio) < 0){ #Si es negativo, la raiz está en [punto_medio,limite_superior]
		limite_inferior <- punto_medio
	}
	else{ #Si no, la raiz está en [limite_inferior,punto medio]
		limite_superior <- punto_medio
	}
}

#Imprimimos al estilo del lenguaje C el valor aproximado de la raíz
sprintf("La raiz aproximada es %.8f\n",limite_superior)
