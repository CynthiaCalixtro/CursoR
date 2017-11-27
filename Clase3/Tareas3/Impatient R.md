
# Reporte del artículo "Impatient R"

A continuación, presentamos un tutorial para aprender a programar en R. Antes de empezar, hay que tener en cuenta dos cosas:

- Saltarse los elementos básicos con la idea de avanzar más rápido, casi siempre resulta todo lo contrario.
- Generalmente, el mayor obstáculo para aprender R es pensar que es difícil. Lo cual no es cierto ya que hacer una tarea en R es un proceso lógico y a menudo simple.

## 1. ¿Qué sucede al iniciar R?

R se usa como un programa interactivo ya que le damos un comando y responde con otro el cual puede influir en los futuros comandos que le demos a R.

Al iniciar R cierto número de "paquetes" son adjuntados a la lista de búsqueda. Podemos ver cuáles son escribiendo el comando:

```
search()
```

y, a continuación, presionar `Enter`. El primer elemento en la lista de búsqueda es el "entorno global". Este es nuestro espacio de trabajo donde estarán los objetos que vayamos a crear durante la sesión en R.

Salimos de R con el comando:

```
q()
```

Posteriormente, R nos preguntará si deseamos guardar o no el entorno global al salir. Si guardamos el entorno global, podemos iniciar otra sesión en R con esos objetos en el entorno global al comienzo de la nueva sesión.

Tenga en cuenta que solo se guardarán los objetos en el entorno global, no la sesión en sí.

## 2. Síndrome de la pantalla en blanco

Sabemos que está ansioso por hacer algo. Para empezar, deberemos tener una tarea y luego dividirla en pasos.

## 3. Objetos Clave

R admite diferentes tipos de objetos. Este hecho suele ser una desventaja cuando se esta empezando a aprender R. Por lo cual solo mencionaremos algunos tipos.

### 3.1. Objetos básicos

Hay tres objetos básicos importantes:

- Vector atómico.
- Lista.
- `NULL`.

A continuación, pasaremos a explicar cada uno de ellos:

#### 3.1.1. Vector atómico

Puede ser:

- Numérico.
- Lógico.
- Caracter.

Todos los elementos en un vector atómico son del mismo tipo. Por ejemplo, no puede haber un vector atómico que tenga números y cadenas de caracteres.

#### 3.1.2. Lista

Las componentes de una lista pueden ser de diferentes tipos. Además, una lista puede tener como componente otra lista.

#### 3.1.3. NULL

`NULL` es un objeto que tiene longitud cero.

### 3.2. Objetos derivados

Los objetos derivados o no básicos pueden ser:

- Matriz.
- Data frame.
- Factor.

#### 3.2.1. Matriz y Data Frame

Las matrices y los data frames son objetos rectangulares con la diferencia de que todos los elementos de una matriz debe ser del mismo tipo atómico, mientras que los data frames pueden tener columnas de diferentes tipos. Cada columna de un data frame debe ser de un solo tipo.

#### 3.2.2. Factor

Los factores representan datos categóricos. A menudo, los factores se confunden fácilmente con vectores de caracteres. Por ejemplo, las columnas de marcos de datos que se podrían pensar como caracteres son muchas veces factores.

## 4. Acciones Clave

Existen tres acciones básicas en R:

- Asignación.
- Subscripting.
- Generación aleatoria.

### 4.1. Asignación

Existen 2 formas para asignar el valor resultante de una llamada a función a un variable:

```
meanx <- mean(x)
```

o

```
meanx = mean(x)
```

Una vez que se hayamos ejecutado uno de estos comandos, `meanx` será un objeto en su entorno global.

Tenga en cuenta que R distingue entre mayúsculas y minúsculas. Por ejemplo, los variables `meanx` y `Meanx` son diferentes.

### 4.2. Subscripting

Subscripting significa extraer piezas de un objeto. Esto se hace con corchetes. Por ejemplo:

```
x[1]
```

extrae el primer elemento de `x` .

Mientras que

```
x[1, 3]
```

extrae el elemento que se encuentra en la primera fila y en la tercera columna de una matriz o data frame.

Subscripting también incluye reemplazar piezas de un objeto. Por ejemplo:

```
x[1] <- 9
```

cambiará el primer elemento de `x` a 9.

### 4.3. Generación aleatoria

Existen varias funciones en R que producen aleatoriedad. Por ejemplo, el comando:

```
runif(9)
```

crea un vector de 9 números que se distribuyen uniformemente entre 0 y 1. Obtendremos diferentes respuestas de este comando si lo hacemos de nuevo.

### 4.4. Gráficos

En R, también se puede crear un plot, lo cual veremos más adelante en la sección de gráficos.

## 5. Leyendo datos en R

Para obtener datos rectangulares (como una matriz o un data frame) en R usamos la función `read.table` o una de sus variaciones. `read.table` devuelve un data frame.

## 6. Ver objetos

Para ver un objeto podemos imprimirlo. También podemos ver qué objetos existen.

### 6.1. Imprimir

Para imprimir el objeto `x`, escribimos el siguiente comando:

```
print(x)
```

O simplemente puede escribimos el nombre del objeto:

```
x
```

Tenga en cuenta que cuando hacemos una asignación, el resultado no se imprime. Por ejemplo,

```
meanx <- mean(x)
```

no imprime el resultado, lo único que muestra es el promt. En cambio,

```
mean(x)
```

imprime el resultado y muestra el promt.

### 6.2. Listar objetos existentes

Para ver los nombres de los objetos en el entorno global de la sesión actual, escribimos el siguiente comando:

```
ls()
```

## 7. Guardar objetos

En R podemos guardar un objeto para utilizarlo nuevamente o también, podemos crear un archivo que contenga los datos del objeto para usarlo en otro programa.

### 7.1. Guardar un objeto

Para guardar un objeto `x` en un archivo `x.rda`, escribimos el comando:

```
save(x, file="x.rda")
```

Para que el objeto guardado `x` esté disponible cuando iniciemos una nueva sesión, usamos el comando:

```
attach("x.rda")
```

el cual adjunta el archivo `x.rda`.

### 7.2. Escribir un archivo para otro programa

Para crear un archivo `x.txt` que contenga la matriz o data frame `x`, usamos el comando:

```
write.table(x, file="x.txt")
```

## 8. Errores

En R se pueden producir errores y warnings. Ambos muestran siempre un mensaje cuando ocurren. Los errores detienen la ejecución del comando mientras que los warnings no lo hacen.

Existen 3 tipos de errores:

- Errores de sintaxis.
- Errores de objetos no encontrados.
- Otros errores.

### 8.1. Errores de Sintaxis

Si se obtiene uno entonces ha ingresado un comando que R no puede entender.  El mensaje de error que se muestra nos da una idea de cual pudo ser el error.

### 8.2. Objeto no encontrado

Las causas de este tipo de error pueden ser:

- El nombre del objeto está mal escrito.
- El paquete o archivo que contiene el objeto no está en la lista de búsqueda.
- Otros.

### 8.3. Otros errores

Si se obtiene un error que no se puede clasificar en uno de los tipos anteriores, podemos escribir el comando:

```
traceback()
```

el cual nos dará un rastreo de las funciones que estaban en efecto en el momento que se dio el error.

### 8.4. Warnings

Si obtenemos un warning, deberemos ver si el mensaje mostrado por este nos advierte de un problema real o no.

## 9. Gráficos

En R, un "dispositivo gráfico" es como un lienzo sobre el cual se dibujará. Si solo vamos a hacer gráficos de forma interactiva, no nos debemos preocupar por el dispositivo gráfico ya que R iniciará un dispositivo predeterminado. En cambio, si deseamos guardar gráficos para compartir, tendremos que decidir un dispositivo gráfico.

Para crear un gráfico usamos la función `plot`, como en el siguiente comando:

```
plot(x)
```

## 10. Funciones mágicas, objetos mágicos

Los objetos que tienen una "clase" y las funciones que son "genéricas" pueden verse como mágicos ya que cuando se usa una función genérica la acción que realizará dependerá de la clase de su argumento. Por ejemplo, las funciones `print` y `plot` son genéricas.

## 11. Vectorización

R es un lenguaje vectorial. La vectorización se produce cuando una operación trata al objeto como un todo. Por ejemplo:

```
x + 2
```

agrega 2 a cada elemento de x.

## 12. Cometer errores a propósito

Para aprender mejor R, debemos experimentar cometiendo errores en el camino ya que esto nos ayuda a aprender:

- Cómo es que funcionan las cosas.
- A enfrentar los errores cuando estos ocurran.

## 13. Algunos tipos de archivos

Aunque R no toma importancia a las extensiones de los archivos, existe la siguiente convención:

|  Extensión  |       .RDA       |       .R       |   .TXT .CSV   |
| :---------- | :--------------: | :------------: |:-------------:|
| Creado por  |      `save`      |    un editor   | `write.table` |
| Usado por   | `attach`, `load` |    `source`    |  `read.table` |
| Explicación |   objetos en R   |  comandos de R |      datos    |

NOTA: Los archivos con extensión .RData son iguales a los archivos con extensión .rda.

## 14. ¿Cómo leer un archivo de ayuda?

Para obtener la ayuda de R para una función debemos escribir el signo de interrogación seguido del nombre de la función. Por ejemplo, si queremos ayuda para la función `mean` escribimos:

```
?mean
```

Inmediatamente, aparecerá la ayuda de R. Veremos que no solo nos detalla que hace la función y sus argumentos sino que también podemos encontrar ejemplos.

## 15. Paquetes

R trae varios paquetes que no se adjuntan automáticamente cuando lo iniciamos. Para ver todos los paquetes disponibles, escribimos:

```
library()
```

Hay un repositorio principal de paquetes de R llamado CRAN. Para utilizar un paquete CRAN que no está instalado en nuestra máquina, primero deberemos descargarlo de Interenet. Por ejemplo, si queremos descargar el paquete `fortunes`, escribimos:

```
install.packages("fortunes")
```

La instalación se realiza solo una vez. Luego para usarlo, en una sesión deberemos adjuntarlo escribiendo:

```
require(fortunes)
```

## 16. Entornos informáticos útiles

Es de gran ayuda usar un editor que tenga conocimiento de R.

## 17. Otros documentos

### 17.1. Websites

- [Quick-R](https://www.statmethods.net/ "Quick-R")
- [Rtips](http://pj.freefaculty.org/R/Rtips.html "Rtips")
- [Try R at Code School](http://tryr.codeschool.com/ "Try R at Code School").
- [R twotorials](https://www.youtube.com/playlist?list=PLcgz5kNZFCkzSyBG3H-rUaPHoBXgijHfC "R twotorials") (conjunto de videos de 2 minutos cada uno).
- [R resources for beginners](http://www.introductoryr.co.uk/R_Resources_for_Beginners.html "R resources for beginners").
- [Some hints for the R beginner](http://www.portfolioprobe.com/user-area/some-hints-for-the-r-beginner/ "Some hints for the R beginner").

### 17.2. Libros

- [An Introduction to R](https://cran.r-project.org/doc/manuals/R-intro.html "An Itroduction to R").
- [R for Dummies](http://www.wiley.com/WileyCDA/WileyTitle/productCd-1119962846.html "R for Dummies") (es un buen libro para empezar).

## 18. Ayuda de R

El help de R es una valiosa fuente de información. Otro recurso para obtener ayuda sería la [etiqueta R en StackOverflow](https://stackoverflow.com/questions/tagged/r "Etiqueta R en StackOverflow").

---

Fuente: [Impatient R](http://www.burns-stat.com/documents/tutorials/impatient-r/#intro "Impatient R")
