# Este script busca en cada archivo T_127P_*.txt la linea correspondiente a cada Provincia y selecciona el dato del combustible para agregarlo al archivo correspondiente
# 
for year in 06 07 08 09 10 11 12 13 14 15
	do 
		for month in 01 02 03 04 05 06 07 08 09 10 11 12
			do
				for Prov in  "Almer[ií]a" "C[aá]diz" "C[oó]rdoba" "Granada" "Huelva" "Ja[eé]n" "M[áa]laga" "Sevilla" "Huesca" "Teruel" "Zaragoza" "Asturias" "Balear" "Palmas" "Tenerife" "Cantabria" "[AÁ]vila" "Burgos" "Le[oó]n" "Palencia" "Salamanca" "Segovia" "Soria" "Valladolid" "Zamora" "Albacete"  "Real" "Cuenca" "Guadalajara" "Toledo" "Barcelona" "Girona" "Lleida" "Tarragona" "Alicante" "Castell[oó]n" "Valencia" "Badajoz" "C[aá]ceres" "Coru*a" "Lugo" "O*rense" "Pontevedra" "Madrid" "Navarra" "Murcia" "A[rl]a[bv]a" "[VB]iz[ck]a[iy]a" "G*ipuz*"  "Rioja"  "Ceuta" "Melilla"
				
					do 
						
						File=$(find . -type d|grep -i -w */*_*$Prov*)


						#Combustible nuclear
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt | awk -F'  '+ '{print $2}'|awk -F. '{print $1$2$3}' | sed "1 i\   
						20$year$month   " >> $File/COMBUSTIBLENUCLEAR.txt 

						#Carbones
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt | awk -F'  '+ '{print $3}'|awk -F. '{print $1$2$3}' | sed "1 i\   
						20$year$month   " >> $File/CARBONES.txt 

						#Lignitos
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt | awk -F'  '+ '{print $4}'|awk -F. '{print $1$2$3}' | sed "1 i\   
						20$year$month   " >> $File/LIGNITOS.txt 

						#Fuel
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt | awk -F'  '+ '{print $5}'|awk -F. '{print $1$2$3}' | sed "1 i\   
						20$year$month   " >> $File/FUEL.txt 

						#Gas natural
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt | awk -F'  '+ '{print $6}'|awk -F. '{print $1$2$3}' | sed "1 i\   
						20$year$month   " >> $File/GASNATURAL.txt 

						#Otros combustibles
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt | awk -F'  '+ '{print $7}'|awk -F. '{print $1$2$3}' | sed "1 i\   
						20$year$month   " >> $File/OTROSCOMBUSTIBLES.txt 

						#Total
						grep -i   "$Prov"  20"$year"/T_127P_$month*.txt | awk -F'  '+ '{print $8}'| awk  '{print $1}'|awk -F. '{print $1$2$3}' | sed "1 i\   
						20$year$month   " >> $File/TOTAL.txt 



					done 
				

			done
	done 




# for Prov in Corun.a
# 	do
# 		grep $Prov *.txt

# 		grep -i Tarragona T_127P_04011.txt|cut -c 22-32 