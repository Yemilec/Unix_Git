# Este script descarga La relación entre Provincias y Comunidades Autónomas y lo almacena en un archivo .txt
# Se crean las carpetas de cada Comunidad Autonoma y dentro ellas las de las Provincias que le corresponden.


curl http://www.ine.es/daco/daco42/codmun/cod_ccaa_provincia.htm>CAyP.html
textutil -convert txt CAyP.html
rm CAyP.html
for ComAuto in "Cataluña" "Andalucía" "Aragón" "Asturias, Principado de" "Balears, Illes" "Canarias" "Cantabria" "Castilla y León" "Castilla-La Mancha"  "Comunitat Valenciana" "Extremadura"  "Galicia" "Madrid, Comunidad de" "Murcia, Región de" "Navarra, Comunidad Foral de" "País Vasco" "Rioja, La" "Ceuta" "Melilla"
	do
		lineaC=$(grep -w -n -e "^$ComAuto" CAyP.txt|head -n 1|cut -d : -f 1)
		CodCom=$(head -n $lineaC CAyP.txt|tail -n 2|head -n 1)
		NomCom=$(head -n $lineaC CAyP.txt|tail -n 1|awk '{print $1$2$3}' |awk -F, '{print $1$2}')
		mkdir "$CodCom"_"$NomCom"
	done
	#se crean las carpetas de las comunidades autónomas 


for Prov in "Almería" "Cádiz" "Córdoba" "Granada" "Huelva" "Jaén" "Málaga" "Sevilla" "Huesca" "Teruel" "Zaragoza" "Asturias" "Balears, Illes" "Palmas, Las" "Santa Cruz de Tenerife" "Cantabria" "Ávila" "Burgos" "León" "Palencia" "Salamanca" "Segovia" "Soria" "Valladolid" "Zamora" "Albacete"  "Ciudad Real" "Cuenca" "Guadalajara" "Toledo" "Barcelona" "Girona" "Lleida" "Tarragona" "Alicante/Alacant" "Castellón/Castelló" "Valencia/València" "Badajoz" "Cáceres" "Coruña, A" "Lugo" "Ourense" "Pontevedra" "Madrid" "Navarra" "Murcia" "Araba/Álava" "Bizkaia" "Gipuzkoa"  "Rioja, La"  "Ceuta" "Melilla"
	do	
		lineaP=$(grep -w -n -e "^$Prov" CAyP.txt|tail -n 1|cut -d : -f 1)
		CodCom2=$(head -n $lineaP CAyP.txt|tail -n 4|head -n 1)
		NomCom2=$(head -n $lineaP CAyP.txt|tail -n 3|head -n 1|awk '{print $1$2$3}' |awk -F, '{print $1$2}')
		CodProv=$(head -n $lineaP CAyP.txt|tail -n 2|head -n 1)
		NomProv=$(head -n $lineaP CAyP.txt|tail -n 1|awk '{print $1$2$3$4}'|awk -F, '{print $1$2}'|cut -d/ -f1)
		mkdir "$CodCom2"_"$NomCom2"/"$CodProv"_"$NomProv"
		#se crean las carpetas de las provincias dentro de su correspondiente Comunidad Autónoma
		 
	done 
rm CAyP.txt