#***Lista de ejercicios***

1.  **Experimenta con los siguientes comandos e interpreta los resultados:**

	```
	echo hello world
	```
	Muestra la cadena que se le indique, en este caso *hello world*.
	
	---
	```
	passwd
	```
	Se usa para cambiar la contraseña del usuario actual.
	
	---
	```
	date
	```
	Imprime la fecha y hora del sistema.
	
	---
	```
	hostname
	```
	Muestra el *host name* del sistema.
	
	---
	```
	arch
	```
	Muestra la arquitectura de la máquina.
	
	---
	```
	uname -a
	```
	Imprime la información del sistema (el *kernel*, su versión, el *SO*, entre otros).
	
	---	
	```
	dmesg | more
	```
	Muestra los hardwares que se detectan durante el proceso de arranque y sus detalles de configuración. 
	
	---
	```
	uptime
	```
	Indica cuánto tiempo ha estado funcionando el sistema.
	
	---	
	```
	who am i
	```
	No muestra nada. Sin embargo, `whoami` muestra el usuario actual.
	
	---
	```
	who
	```
	Muestra quien ha iniciado sesión.
	
	---
	```
	id
	```
	Muestra el ID del usuario y del grupo.
	
	---
	```
	last
	```
	Muestra una lista de los últimos usuarios logueados.
	
	---
	```
	finger
	```
	Muestra la información de los usuarios del sistema.
	
	---
	```
	w
	```
	Muestra quién ha iniciado sesión y que es lo que hace.
	
	---
	```
	top
	```
	Muestra los procesos.

	---
2. **Realiza las siguientes actividades:**

	* Crea dos directorios llamados a1 y a2 en el directorio /home.
	```
	cynthia@cca:~$ mkdir a1 a2
	```
	* Copia el archivo /etc/passwd al directorio a1 y escribe las primeras 30 lineas del archivo http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything al directorio a2.
	```
	cynthia@cca:~$ cp /etc/passwd a1
	
	cynthia@cca:~$ wget -O -  http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything > fuente
	cynthia@cca:~$ head -n30 fuente > a2/archivo
	```
	* Usa `find` para mostrar los nombres de todos los archivos en árbol de directorios de `/home`.
	```
	cynthia@cca:~$ find . -type f
	```
	* Usa `locate` para encontrar todos los nombres de archivos que contengan la palabra commands en el árbol de directorios de /home.
	```
	cynthia@cca:~$ locate /home/chia/*commands*
	```
	* Utilice find y grep y sort para mostrar una lista ordenada de todos los archivos en todos los subdirectorios de / home que contienen la palabra commands , R, Python en algún lugar dentro de ellos.
	```
	cynthia@cca:~$ find . -type f | grep -e "commands" -e "R" -e "Python" | sort

	```

3. **Ejecuta el siguiente script y explica que es lo que hace.**
	```
	#!/bin/sh
	for f in $*
	do
	  if [ -f  $f -a  ! -x  $f ]
	  then
	    case $f in
	    core)
	      echo "$f: archivo de memoria"
	      ;;
	    *.c)
	     echo "$f: un programa en C"
	      ;;
	    *.cpp|*.cc|*.cxx)
	      echo "$f: un programa en C+"
	      ;;
	    *.txt)
	      echo "$f: un archivo de texto"
	      ;;
	    *.pl)
	      echo "$f: un script de Perl"
	      ;;
	    *.html|*.htm)
	      echo "$f: un documento web"
	      ;;
	    *)
	      echo "$f: aparece ser  "`file -b $f`
	      ;;
	    esac
	  fi
	done
	```
	El script anterior nos muestra el tipo de nuestro(s) archivo(s) que le pasemos como argumento(s).

4. **Sigue los siguientes pasos para ejecutar el siguiente script llamado *bash_script:***
	```
	#!/bin/sh
	# este es un comentario
	echo "El numero de argumentos es  $#"
	echo "Los argumentos son $*"
	echo "El primero es $1"
	echo "Mi numero de proceso es  $$"
	echo "Ingresa un numero desde el teclado: "
	read numero
	echo "El numero que has ingresado es $numero"
	```
	**Para ejecutar el script se realiza lo siguiente:**
	```
	ls -l bash_script
	chmod +x bash_script
	ls -l bash_script
	./bash_script hola a todos
	```
	El resultado fue el siguiente:
	```
	El numero de argumentos es  3
	Los argumentos son hola a todos
	El primero es hola
	Mi numero de proceso es  9792
	Ingresa un numero desde el teclado: 
	```
	Ingresé el número 32 y mostró:
	```
	El numero que has ingresado es 32
	```
5. Prueba en secuencia los siguientes comandos y explica tus pasos.
	`cd` Cambia al directorio `/home/cynthia`.

	`pwd` Muestra la ruta donde nos encontramos actualmente: `/home/cynthia`.

	`ls -al` Lista todos los archivos (incluyendo los ocultos) del directorio `/home/cynthia` mostrando sus permisos, tamaño, propietario, fecha y hora. 

	`cd .` Nos ubica en el directorio actual `/home/cynthia`.

	`pwd` Muestra la ruta donde nos encontramos actualmente: `/home/cynthia`.

	`cd ..` Cambiamos al directorio padre (superior) `/home`.

	`pwd` Muestra la ruta donde nos encontramos actualmente: `/home`.

	`ls -al` Lista todos los archivos (incluyendo los ocultos) del directorio `/home` mostrando sus permisos, tamaño, propietario, fecha y hora. 

	`cd ..` Cambiamos al directorio padre (superior) `/`.

	`pwd` Muestra la ruta donde nos encontramos actualmente: `/`.

	`ls -al` Lista todos los archivos (incluyendo los ocultos) del directorio `/` mostrando sus permisos, tamaño, propietario, fecha y hora. 

	`cd ..` No hace nada ya que no existe un directorio padre (superior) a `/`.

	`pwd` Muestra la ruta donde nos encontramos actualmente: `/`.

	`cd /etc` Cambiamos al directorio `/etc`.

	`ls -al | more` Lista todos los archivos del directorio `/etc` mostrando sus permisos, tamaño, propietario, fecha y hora. La pantalla se llena con los primeros elementos de la lista y, posteriormente, espera a que el usuario pulse la tecla *enter* o *espacio* para que nos muestre más elementos de la lista.

	`cat passwd` Muestra el contenido del archivo *passwd*.

	`cd -` Regresar al directorio anterior: `/`.

	`pwd` Muestra la ruta donde nos encontramos actualmente: `/`.

6. **Revisa el archivo *chipotle.tsv* dentro del repositorio del curso, en la carpeta donde se aloja esta tarea. Piensa un minuto en cómo se estructuran los datos. ¿Qué crees que significa cada columna? ¿Qué crees que significa cada fila?. Responde las siguientes preguntas.**
	Guardamos el archivo **chipotle.tsv** de la siguiente manera:
	```
	cynthia@cca:~$ wget -O -  https://raw.githubusercontent.com/C-Lara/Curso-R/master/Lista-ejercicios/TareaR0/chipotle.tsv > chipotle.tsv 
	```
	Podemos observar que el archivo consta de 4 columnas: `order_id` (el id de cada orden), `quantity` (representa la cantidad de cada ítem), `item_name`(nombre del ítem adquirido), `choice_description` (descripción de la elección) y el `item_price` (el precio del ítem).
	Cada fila representa el ítem (cuántos de estos, el precio, ...) que se ha pedido en una determinada orden.
	- **¿Cuántas órdenes aparecen en el archivo?**
		Aparecen 1834 órdenes.
	- **¿Cuántas líneas hay en este archivo?**
		Usamos el siguiente comando para ver cuantas líneas tiene el archivo.
	```
	cynthia@cca:~$ wc -l chipotle.tsv 
	```
		Hay 4623 líneas.
		
	- **¿Qué burrito es más popular, el de carne o pollo?**
	Para averiguar esto veamos el resultado de cada comando especificado a continuación:
	```
	cynthia@cca:~$ grep "Chicken Burrito" chipotle.tsv | wc -l
	```
		El resultado es 553.
	```
	cynthia@cca:~$ grep "Steak Burrito" chipotle.tsv | wc -l
	```
		El resultado es 368.
		
		El primer comando nos muestra en pantalla la cantidad de líneas en las cuales aparece el ítem *Chicken Burrito*, mientras que el segundo muestra la cantidad de líneas donde aparece el ítem *Steak Burrito*. Como el primer resultado (553) es mayor que el segundo (368) podemos decir que el burrito de pollo es más popular que el de carne.
	
	- **¿Los burritos de pollo tienen más frecuentemente frijoles negros o frijoles pintos?**
	Para averiguar esto veamos el resultado de cada comando especificado a continuación:
	```
	cynthia@cca:~$ grep "Chicken Burrito" chipotle.tsv | grep "Black Beans" | wc -l
	```
		El resultado es 282.
	```
	cynthia@cca:~$ grep "Chicken Burrito" chipotle.tsv | grep "Pinto Beans" | wc -l
	```
		El resultado es 105.

		El primer comando nos muestra en pantalla la cantidad de líneas en las cuales aparece *Black Beans* ("frijoles negros", en español) en las líneas donde aparece el ítem *Chicken Burrito*, mientras que el segundo hace lo mismo con los *Steak Burrito* ("frijoles pintos", en español). Como el primer resultado (282) es mayor que el segundo (105) podemos decir que es más frecuente que los burritos de pollo tengan frijoles negros a que tengan frijoles pinto.

	- **Haga una lista de todos los archivos CSV o TSV en el repositorio del curso (usando un solo comando). Piense en cómo los caracteres comodín pueden ayudarte con esta tarea. Cuente el número aproximado de apariciones de la palabra "dictionary" (independientemente del caso) en todos los archivos del repositorio del curso.**
	
		Podemos listar todos los archivos *csv* o *tsv* con ayuda de los comodines:
	```
	find . -name *.?sv
	```
		
		Podemos contar el número de aproximado de apariciones de la palabra *"dictionary"* (independientemente del caso) de la siguiente manera:
		```
		grep -ir "dictionary" . | wc -l
		```
	
	