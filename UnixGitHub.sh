# Este script descarga los archivos  mensuales de PRODUCCION BRUTA DE ENERGIA TERMOELECTRICA POR PROVINCIAS SEGUN EL COMBUSTIBLE 
# publicadas por el Ministerio de Industria, del 2006 al 2015.
# Los guarda en el directorio de su año

BASEURI="http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales"
for year in {2006..2015}
	do 
		mkdir $year
		for month in Enero Febrero Marzo Abril  Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre
			do
				mkdir "$year"/$month
				curl -s "$BASEURI/${year}/{$month}{%20,_}{$year}.zip" >"$year"/"$month"/"$month"_"$year".zip  
				
				unzip -njq  "$year"/"$month"/"$month"_"$year".zip '*127P*' -d "$year" 

				rm -r "$year"/"$month"
				

			done
	done 
