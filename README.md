#Tarea de la shell de UNIX y Git

Este repositorio fue hecho en base a lo solicitado para la tarea de la shell de UNIX y Git de la materia M1503 - Métodos de Gestión de la Información - Curso 2017-2018 de la Universidad de Cantabria por la alumna Yemile del Socorro Chávez MArtínez.

El repositorio contiene cuatro scripts UnixGitHub.sh, CAyP.sh, DatosCombustibles.sh.

-El script *UnixGitHub.sh* descarga los archivos  mensuales de PRODUCCION BRUTA DE ENERGIA TERMOELECTRICA POR PROVINCIAS SEGUN EL COMBUSTIBLE publicadas por el Ministerio de Industria, del 2006 al 2015, los descomprime y  crea un directorio de su año, en donde el archivo es guardado.

-El script *CAyP.sh* descarga la relación entre Provincias y Comunidades Autónomas y lo almacena en un archivo ".txt". En base a este se crea los directorios de cada Comunidad Autónoma que a su vez contendrán los directorios de sus Provincias correspndientes,los cuales también son creados con este script.

-El script *DatosCombustibles.sh* busca en el archivo de PRODUCCION BRUTA DE ENERGIA TERMOELECTRICA POR PROVINCIAS SEGUN EL COMBUSTIBLE de cada año  la linea correspondiente a cada Provincia y selecciona el dato de cada combustible para agregarlo a un archivo con el nombre del combustible en el directorio de su provincia.

-El script *script0.sh*, es el encargado de ejecutar los tres scripts anteriores en el orden correspondiente.
##bash script0.sh

Los scripts deben estar en la carpeta donde se ejecute script0.sh.
Los documentos y carpetas se crearan en la carpeta desde donde se ejecuten los scripts.


