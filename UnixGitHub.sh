for year in {2006..2015}
	do 
		mkdir $year
		for month in Enero Febrero Marzo Abril  Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre
			do
				mkdir "$year"/$month
				curl -s "http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/${year}/{$month}{%20,_}{$year}.zip" >"$year"/"$month"/"$month"_"$year".zip 2> /dev/null 
				
				unzip -njq  "$year"/"$month"/"$month"_"$year".zip '*127P*' -d "$year" 2> /dev/null

				rm -r "$year"/"$month"
				

			done
	done 