# Este script busca en cada archivo T_127P_*.txt la linea correspondiente a cada Provincia y selecciona el dato del combustible para agregarlo al archivo correspondiente
# 
for year in 06 07 08 09 10 11 12 13 14 15
	do 
		for month in 01 02 03 04 05 06 07 08 09 10 11 12
			do
				for Prov in  "Almer[ií]a" "C[aá]diz" "C[oó]rdoba" "Granada" "Huelva" "Ja[eé]n" "M[áa]laga" "Sevilla" "Huesca" "Teruel" "Zaragoza" "Asturias" "Balear" "Palmas" "Tenerife" "Cantabria" "[AÁ]vila" "Burgos" "Le[oó]n" "Palencia" "Salamanca" "Segovia" "Soria" "Valladolid" "Zamora" "Albacete"  "Real" "Cuenca" "Guadalajara" "Toledo" "Barcelona" "Girona" "Lleida" "Tarragona" "Alicante" "Castell[oó]n" "Valencia" "Badajoz" "C[aá]ceres" "Coru*a" "Lugo" "O*rense" "Pontevedra" "Madrid" "Navarra" "Murcia" "A[rl]a[bv]a" "[VB]iz[ck]a[iy]a" "G*ipuz*"  "Rioja"  "Ceuta" "Melilla"
				
					do 
						
						File=$(find . -type d|grep -i -w */*_*$Prov*)

						for Comb in "2:COMBUSTIBLENUCLEAR"  "3:CARBONES" "4:CLIGNITOS"  "5:FUEL" "6:GASNATURAL" "7:OTROSCOMBUSTIBLES" "8:TOTAL"

							do
								Comb1=$( echo "$Comb" |awk -F: '{print $1}')
								Comb2=$( echo "$Comb" |awk -F: '{print $2}')

								

								# if [ "$Comb" -eq 2 ]
								# 	then
								# 		NomComb=COMBUSTIBLENUCLEAR
								# elif [ "$Comb" -eq 3 ]
								# 	then
								# 		NomComb=CARBONES
								# elif [ "$Comb" -eq 4 ]
								# 	then
								# 		NomComb=CLIGNITOS
								# elif [ "$Comb" -eq 5 ]
								# 	then
								# 		NomComb=FUEL
								# elif [ "$Comb" -eq 6 ]
								# 	then
								# 		NomComb=GASNATURAL
								# elif [ "$Comb" -eq 7 ]
								# 	then
								# 		NomComb=OTROSCOMBUSTIBLES
								# elif [ "$Comb" -eq 8 ]
								# 	then
								# 		NomComb=TOTAL
								# fi
								
								grep -i   "$Prov"  20"$year"/T_127P_$month*.txt | awk -v i=$Comb1 -F'  '+ '{print $i}' | awk  '{print $1}'|awk -v y=$year -v m=$month -F. '{print 20 y m, $1$2$3}' >> $File/"$Comb2".txt	

							done
					done 
			done
	done 