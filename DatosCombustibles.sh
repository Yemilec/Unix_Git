for year in 06 #07 08 09 10 11 12 13 14 15
	do 
		for month in 01 #02 03 04 05 06 07 08 09 10 11 12
			do
				for Prov in  "Almeri*a" #"Ca*diz" "Co*rdoba" "Granada" "Huelva" "Jae*n" "Ma*laga" "Sevilla" "Huesca" "Teruel" "Zaragoza" "Asturias" "Balear" "Palmas" "Tenerife" "Cantabria" "A*vila" "Burgos" "Leó*n" "Palencia" "Salamanca" "Segovia" "Soria" "Valladolid" "Zamora" "Albacete"  "Real" "Cuenca" "Guadalajara" "Toledo" "Barcelona" "Girona" "Lleida" "Tarragona" "Alicante" "Castello*n" "Valencia" "Badajoz" "Ca*ceres" "Coruñ*a" #"Lugo" "O*rense" "Pontevedra" "Madrid" "Navarra" "Murcia" "A[rl]a[bv]a" "[VB]iz[ck]a[iy]a" "G*ipuz*"  "Rioja"  "Ceuta" "Melilla"
				
					do 
						echo "$Prov" "$year" "$month"
						Linea=$(grep -i   "$Prov"  20"$year"/T_127P_$month*.txt)
						
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt| awk -F'  '+ '{print $2}'|awk -F. '{print $1$2$3}' | sed "1 i\   
						20$year$month   " >> COMBUSTIBLENUCLEAR.txt

						# $Linea| awk -F'  '+ '{print $3 > "CARBONES.txt"}'
						# $Linea| awk -F'  '+ '{print $4 > "LIGNITOS.txt"}'
						# $Linea| awk -F'  '+ '{print $5 > "FUEL.txt"}'
						# $Linea| awk -F'  '+ '{print $6 > "GASNATURAL.txt"}'
						# $Linea| awk -F'  '+ '{print $7 > "OTROSCOMBUSTIBLES.txt"}'
						# $Linea| awk -F'  '+ '{print $8 > "TOTAL.txt"}'



						

						


						#find . -type d|grep -i -w */*_*$Prov*

					done 
				

			done
	done 




# for Prov in Corun.a
# 	do
# 		grep $Prov *.txt

# 		grep -i Tarragona T_127P_04011.txt|cut -c 22-32 