Nombre: Cynthia Lizeth Calixtro Ames 20150456D

Respuesta2: El código muestra las correciones y especificaciones de los código propuestos

# Parte a:

## Ítem 1:

```
mtcars[-1:4,]
```

Los numeros negativos son para no contar filas o columnas, la correccion sería:

```
mtcars[1:4,]
```

Muestra las primeras filas de `mtcars`.


## Ítem 2:

mtcars[mtcars$cyl <= 5]

Las columnas a seleccionar no estan bien definidas, la correccion sería

```
subset(mtcars, cyl <= 5)
```

El cual crea un sub dataframe con las filas y columnas que cumplen la condicion


## Ítem 3:

```
mtcars[mtcars$cyl == 4 | 6,]
```

Lo mejor sería usar `subset` la correccion sería

```
subset(mtcars,cyl == 4 | cyl == 6)
```



# Parte b:

```
x <-1:5
x[NA] 
```

Produce 5 NA ya que compara los indices del vector, (1,2,3,4,5), con NA y como sucede con todas las operacion con elementos NA, nos devuelve NA.


# Parte c:

```
mtcars[1:20] 
```

Devuelve error porque falta definir las columnas que queremos mostrar

```
mtcars[1:20,]
```

En este caso, las columnas ya estan definidas:

- filas a mostrar: 1,2,3,...,20
- columnas a mostrar: todas


# Parte d:

```
df[is.na(df)] <- 0
```

Asigna el valor de 0 a todos los NA de un data frame df si df no tiene vectores de cadenas de caracteres como elementos.

Si tuviese alguno, se asignara el valor de 0 a todos los NA siempre y cuando no se considere a los vectores de cadenas de caracteres como factores, es decir, cuando stringsAsFactors = FALSE. Si stringsAsFactors = TRUE, el codigo hara que se asigne el valor de 0 a todos los NA de df con excepcion de los NA pertenecientes a los vectores de cadenas de caracteres, a los asignara NA.


El funcionamiento del codigo es el siguiente:

is.na(df) devuelve una matriz de elementos logicos donde el i-esimo elemento es TRUE si en NA, en caso contrario es FALSE. df[is.na(df)] selecciona los elementos NA en df. Por ultimo, df[is.na(df)] <- 0, reescribe los elementos NA de df.

