#Este script ejecuta toda la tarea de la shell de UNIX y Git, 
# en donde se descargan los archivos correspondientes a analizar, 
# se crean los directorios correspondientes y finalmente se crea un 
# archivo de texto de cada combustible correspondiente a su provincia.


bash UnixGitHub.sh 2> /dev/null

bash CAyP.sh 2> /dev/null

bash DatosCombustibles.sh 2> /dev/null
