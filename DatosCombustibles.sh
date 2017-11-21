for year in 06 07 08 09 10 11 12 13 14 15
	do 
		for month in 01 02 03 04 05 06 07 08 09 10 11 12
			do
				for Prov in  "Almería" "Cádiz" "Córdoba" "Granada" "Huelva" "Jaén" "Málaga" "Sevilla" "Huesca" "Teruel" "Zaragoza" "Asturias" "Balears, Illes" "Palmas, Las" "Santa Cruz de Tenerife" "Cantabria" "Ávila" "Burgos" "León" "Palencia" "Salamanca" "Segovia" "Soria" "Valladolid" "Zamora" "Albacete"  "Ciudad Real" "Cuenca" "Guadalajara" "Toledo" "Barcelona" "Girona" "Lleida" "Tarragona" "Alicante/Alacant" "Castellón/Castelló" "Valencia/València" "Badajoz" "Cáceres" "Coruña, A" "Lugo" "Ourense" "Pontevedra" "Madrid" "Navarra" "Murcia" "Araba/Álava" "Bizkaia" "Gipuzkoa"  "Rioja, La"  "Ceuta" "Melilla"
				
					do 
						grep -i -e "^$Prov"  20"$year"/T_127P_$month*.txt

					done 
				

			done
	done 




# for Prov in Corun.a
# 	do
# 		grep $Prov *.txt

# 		grep -i Tarragona T_127P_04011.txt|cut -c 22-32 