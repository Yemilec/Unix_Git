# Se requiere la ejecución previa de CAyP.sh

# Este script descarga los archivos  mensuales de PRODUCCION BRUTA DE ENERGIA TERMOELECTRICA POR PROVINCIAS SEGUN EL COMBUSTIBLE 
# publicadas por el Ministerio de Industria, del 2006 al 2015.
# Los guarda en el directorio correspondiente a su año.
# Selecciona los datos de cada tipo de combustible por mes, año y provincia, creando un archivo .txt del combustible 
# el cual estará contenido en la carpeta de dicha provincia.


#Variables FOR
BASEURI="http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales"

meses=('Enero',01 'Febrero',02 'Marzo',03 'Abril',04 'Mayo',05 'Junio',06 'Julio',07 'Agosto',08 'Septiembre',09 'Octubre',10 'Noviembre',11 'Diciembre',12)

years=(06 07 08 09 10 11 12 13 14 15)

Provincias=("Almer[ií]a" "C[aá]diz" "C[oó]rdoba" "Granada" "Huelva" "Ja[eé]n" "M[áa]laga" "Sevilla" "Huesca" "Teruel" "Zaragoza" "Asturias" "Balear" "Palmas" "Tenerife" "Cantabria" "[AÁ]vila" "Burgos" "Le[oó]n" "Palencia" "Salamanca" "Segovia" "Soria" "Valladolid" "Zamora" "Albacete"  "Real" "Cuenca" "Guadalajara" "Toledo" "Barcelona" "Girona" "Lleida" "Tarragona" "Alicante" "Castell[oó]n" "Valencia" "Badajoz" "C[aá]ceres" "Coru*a" "Lugo" "O*rense" "Pontevedra" "Madrid" "Navarra" "Murcia" "A[rl]a[bv]a" "[VB]iz[ck]a[iy]a" "G*ipuz*"  "Rioja"  "Ceuta" "Melilla" )

Combustibles=("2:COMBUSTIBLENUCLEAR"  "3:CARBONES" "4:CLIGNITOS"  "5:FUEL" "6:GASNATURAL" "7:OTROSCOMBUSTIBLES" "8:TOTAL")



for year in "${years[@]}" 
	do 
		mkdir "20"$year
		for month in "${meses[@]}"
			do
				IFS=","; set -- $month  # $1 == Nombre, $2 == Número

				mkdir "20$year"/${1}
				curl -s "$BASEURI/20${year}/${1}{%20,_}{20$year}.zip" >"20$year"/"${1}"/"${1}"_"20$year".zip 
				unzip -njq  "20$year"/"${1}"/"${1}"_"20$year".zip '*127P*' -d "20$year" 
				rm -r "20$year"/${1} 

				#descarga del archivo .zip, se descomprime y se eliminan las carpetas que ya no se necesitan

				mnt=${2}

				text=$(find 20"$year" -name  '*.txt'|grep -i T_127P_$mnt) 
				echo "`iconv -c 20"$year"/T_127P_$mnt*.txt  `" > $text 
				#el archivo de combustibles por año y mes en texto

				for Prov in  "${Provincias[@]}"
					do 
						File=$(find . -type d|grep -i -w */*_*$Prov*) 
						#se define la carpeta de la provincia donde se guardaran los datos de los combustibles

						for Comb in "${Combustibles[@]}"
							do
								Comb1=$( echo "$Comb" |awk -F: '{print $1}') 
								#se define la columna en la que está los datos de cada combustible en el texto
								Comb2=$( echo "$Comb" |awk -F: '{print $2}') 
								#se define el nombre de cada combustible
								
								grep -i   "$Prov"  20"$year"/T_127P_$mnt*.txt | awk -v i=$Comb1 -F'  '+ '{print $i}' | awk  '{print $1}'|awk -v y=$year -v m=$mnt -F. '{print 20 y m, $1$2$3}' >> $File/"$Comb2".txt	
								#se encuentra el dato de cada combustible  y se agrega una al archivo correspondiente de la  provincia y combustible

							done
					done 
			done
	done 
