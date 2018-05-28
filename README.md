# Tarea de la shell de UNIX y Git

Este repositorio fue hecho en base a lo solicitado para la tarea de la shell de UNIX y Git de la materia 
M1503 - Métodos de Gestión de la Información - Curso 2017-2018 
de la Universidad de Cantabria por la alumna Yemile del Socorro Chávez MArtínez.

## El repositorio 
El repositorio contiene tres  scripts: CAyP.sh, UnixBash.sh y script0.sh, los cuales son necesarios para completar la tarea.

Para descargar el repositorio basta ejecutar la siguiente instrucción en la terminal, 

	git clone https://github.com/Yemilec/Unix_Git.git

lo cual creará un repositorio local con los scripts mencionados en una directorio llamado Unix_Git.

## Scripts

-*CAyP.sh*, el cuál descarga la relación entre Provincias y Comunidades Autónomas de http://www.ine.es/daco/daco42/codmun/cod_ccaa_provincia.htm, almacenándolo  en un archivo ".txt". 
En base a este se crean los directorios de cada Comunidad Autónoma (ID_NombreComunidadAutónoma) que a su vez contendrán los directorios de sus Provincias correspondientes(ID_Provincia).

-El script *UnixBash.sh* descarga los archivos mensuales de "PRODUCCION BRUTA DE ENERGIA TERMOELECTRICA POR PROVINCIAS SEGUN EL COMBUSTIBLE" publicadas por el Ministerio de Industria (http://www.ine.es/daco/daco42/codmun/cod_ccaa_provincia.htm), del año 2006 al 2015, los descomprime y  crea un directorio de cada año, en donde el archivo "1.2.7. PRODUCCION BRUTA DE ENERGIA TERMOELECTRICA POR PROVINCIAS SEGUN EL COMBUSTIBLE" de cada mes es guardado.

Por otro lado, para cada Provincia se selecciona el dato de la producción de cada combustible para agregarlo a un archivo ".txt" con el nombre del mismo, este archivo consistirá precisamente en la serie temporal completa de dicho combustible de  la correspondiente provincia, .  
El formato de estos archivos es de dos columnas, la primera indica  año y el mes  (AAAAMM) y la segunda el dato correspondiente en KW/H, es decir			
					200601  67854
					200602   4356
					 ...     ...



-El script *script0.sh*, es el encargado de ejecutar los scripts anteriores en el orden correspondiente sin que haya alguna salida en la terminal con respecto al proceso de la tarea.

## Ejecución

Para la ejecución de la tarea, los scripts  y la terminal deben estar en el directorio donde se ejecute *script0.sh*.
Así mismo, los archivos y directorios que se crean durante proceso estarán ubicados en éste.

Para llevar a cabo la tarea se necesita ejecutar la siguiente instrucción en la terminal.
	bash script0.sh


Al finalizar, el directorio, además de los scripts contendrá un directorio para cada año, con los archivos mensuales, y un directorio para cada Comunidad Autónoma, que a su vez contendrá un directorio para cada una de sus Provincias, donde se encontrarán sus series temporales de cada combustible.


## Autores

Yemile del Socorro Chávez Martínez