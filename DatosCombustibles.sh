for year in 06 #07 08 09 10 11 12 13 14 15
	do 
		for month in 01 #02 03 04 05 06 07 08 09 10 11 12
			do
				for Prov in  "Almeri*a" "C*diz" "C*rdoba" "Granada" "Huelva" "Jae*n" "M*laga" "Sevilla" "Huesca" "Teruel" "Zaragoza" "Asturias" "Balear" "Palmas" "Tenerife" "Cantabria" "A*vila" "Burgos" "Leó*n" "Palencia" "Salamanca" "Segovia" "Soria" "Valladolid" "Zamora" "Albacete"  "Real" "Cuenca" "Guadalajara" "Toledo" "Barcelona" "Girona" "Lleida" "Tarragona" "Alicante" "Castello*n" "Valencia" "Badajoz" "C*ceres" "Coruña" "Lugo" "O*rense" "Pontevedra" "Madrid" "Navarra" "Murcia" "A[rl]a[bv]a" "[VB]iz[ck]a[iy]a" "G*ipuz*"  "Rioja"  "Ceuta" "Melilla"
				
					do 
						echo "$Prov" "$year" "$month"
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt
						

						


						find . -type d|grep -w */*_*$Prov*

					done 
				

			done
	done 




# for Prov in Corun.a
# 	do
# 		grep $Prov *.txt

# 		grep -i Tarragona T_127P_04011.txt|cut -c 22-32 