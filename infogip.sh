green="\033[32;1m"
yellow="\033[33;1m"
indigo="\033[34;1m"
red="\033[31;1m"                                                        
purple="\033[37;1m"
cyan="\033[36;1m"                                                       
white="\033[39;1m"
restartprogram() {
echo "No existe esta opcion !!!!!"
sleep 2
clear
menuoption
}

xxx() {
asn:
city:
continent_code:
country:
country_calling_code:
country_name:
currency:
in_eu:
ip:
languages:
latitude:
longitude: 
org: 
postal:
region:
region_code:
timezone:
utc_offset:
#city, region , country , continent, postal code, latitude, longitude, timezone, 
#utc_offset, european union (EU) membership, country calling code, currency, 
#languages spoken, and organization.#
}

banner() {
ip=$(w3m -dump https://ipapi.co/ip);
echo $green"Your ip : $white"$ip
echo "	"
echo $red" ____             _    "$white" ____  _                 _   "
echo $red"|  _ \  __ _ _ __| | __"$white"/ ___|| |_ _ __ ___  ___| |_ "
echo $red"| | | |/ _  | '__| |/ /"$white"\___ \| __| '__/ _  / _ ╲ __|"
echo $red"| |_| | (_| | |  |   < "$white" ___) | |_| | |  __/  __/ |_ "
echo $red"|____/ \__,_|_|  |_|\_╲"$white"|____/ \__|_|  \___|\___|\__|"
echo "	"
echo $green" ___        __        ____ ___       "
echo $green"|_ _|_ __  / _| ___  / ___|_ _|_ __  "
echo $green" | || '_ \| |_ / _ \| |  _ | || '_ \ "
echo $green" | || | | |  _| (_) | |_| || || |_) |"
echo $green"|___|_| |_|_|  \___/ \____|___| .__/ "
echo $green"                              |_|    " 
echo "	"
echo $greem"By:$white Lamorte"
echo "	"

}
mm() {
	echo "prueba"
}

True() {
echo " Cargando informacion !!........."
	asn=$(w3m -dump https://ipapi.co/asn);
	city=$(w3m -dump https://ipapi.co/city);
	continent=$(w3m -dump https://ipapi.co/continent_code);
	country=$(w3m -dump https://ipapi.co/country);
	countrycall=$(w3m -dump https://ipapi.co/country_calling_code);
	countryname=$(w3m -dump https://ipapi.co/country_name);
	currency=$(w3m -dump https://ipapi.co/currency);
	ineu=$(w3m -dump https://ipapi.co/in_eu);
	ip=$(w3m -dump https://ipapi.co/ip);
	languange=$(w3m -dump https://ipapi.co/languages);
	latitude=$(w3m -dump https://ipapi.co/longitude);
	longitude=$(w3m -dump https://ipapi.co/longitude);
	org=$(w3m -dump https://ipapi.co/org);
	postal=$(w3m -dump https://ipapi.co/postal);
	region=$(w3m -dump https://ipapi.co/region);
	regioncode=$(w3m -dump https://ipapi.co/region_code);
	timezone=$(w3m -dump https://ipapi.co/timezone);
	utc=$(w3m -dump https://ipapi.co/utc_offset);
echo " \a[+] Asn: "$asn
echo " [+] city: "$city
echo " [+] continent_code: "$continent
echo " [+] country: "$country                                                    
echo " [+] country_calling_code: "$countrycall                                       
echo " [+] country_name: "$countryname
echo " [+] currency: "$currency
echo " [+] in_eu: "$ineu
echo " [+] ip: "$ip
echo " [+] languages: "$language
echo " [+] latitude: "$latitude
echo " [+] longitude: "$longitude 
echo " [+] org: "$org
echo " [+] postal: "$postal
echo " [+] region: "$region
echo " [+] region_code: "$regioncode     
echo " [+] timezone: "$timezone                                                               
echo " [+] utc_offset: "$utc
}
myipagain() {
	echo "Lo harias otra vez !!!"
	read -p "S/si o A/atras or N/salir : "san
	if [ $ybe = "S" ]
		then
			iptarget
	elif [ $ybe = "A" ]
		then
			menuoption
	elif [ $ybe = "S" ]
		then
			echo "Adios ;) "
			exit
	else
		echo "Adios ;) "
		exit
	fi
}
Myip() {
	read -p "Enter para continuar !!! " enter
	command=$(wget https://ipapi.co/yaml/ -q -O .-)
	echo $yellow"\a["$red"+"$yellow"]"$white"Chequea tu IP"$green" >>>>>>>>"
	echo $green
	cat .-
	echo " "
	echo $yellow"["$red"+"$yellow"]"$white"Chequea tu IP"$green" >>>>>>>>"
	rm .-
	exit
}
iptarget() {
	echo $yellow"Ingrese la dirección IP [ejemplo : 123.456.789] "
	echo $white "╭─"$green"DS@localhost"$cyan" ~/InfoGIp"$white
	read -p " ╰─$ " target
	command=$(wget https://ipapi.co/$target/yaml/ -q -O .-)
	echo $yellow"\a["$red"+"$yellow"]"$white"IP del Objetivo" $green" >>>>>>>>>"
	echo $green
	cat .-
	echo " "
	echo $yellow"["$red"+"$yellow"]"$white"IP del Objetivo" $green" >>>>>>>>>"
	rm .-
	exit
}
about() {
	sleep 0.15
	echo '''
	Author by 	: Lamorte
	version		: 0.1
	made on a date	: 11 - Oct - 2020
	Github		: https://github.com/Lamorte-DS

			+ GRACIAS +


'''
}

menuoption() {
	banner
	echo $red"		~"$yellow"{"$green"1"$yellow"}"$purple"--"$white"Informacion de mi IP		"
	echo $red"		~"$yellow"{"$green"2"$yellow"}"$purple"--"$white"Informacion de una IP		"
	echo $red"		~"$yellow"{"$green"3"$yellow"}"$purple"--"$white"Sobre InfoGIp		"
	echo $red"		~"$yellow"{"$green"4"$yellow"}"$purple"--"$white"Salir			"
	echo $white "╭─"$green"DS@localhost"$cyan" ~/InfoGIp"$white
	read -p " ╰─$ " get
	if [ $get -eq 1 ];
		then
			Myip
	elif [ $get -eq 2 ];
		then
			iptarget
	elif [ $get -eq 3 ];
		then
			about
	elif [ $get -eq 4 ];
		then
			echo "Adios ;)"
			exit
	else
		sleep 1
		restartprogram
	fi

}


menuoption
