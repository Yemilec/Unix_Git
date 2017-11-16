for year in {2006..2015}
	do 
		mkdir $year
		for month in Enero Febrero Marzo Abril  Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre
			do
				mkdir "$year"/$month
				curl "http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/${year}/{$month}{%20,_}{$year}.zip" >"$year"/"$month"/"$month"_"$year".zip 
				     #http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Diciembre_2009.zip
				     #http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2009/Agosto%202009.zip
				     #http://www.minetad.gob.es/energia/balances/Publicaciones/ElectricasMensuales/2006/Enero_2006.zip
				unzip -nj  "$year"/"$month"/"$month"_"$year".zip '*127P*' -d "$year"/"$month"

				#rm "$year"/"$month"/"$month"_"$year".zip
				#rm $(ls "$year"/"$month"/*.txt|grep -v T_127P)
				

			done
	done 