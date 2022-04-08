//Ejercicio1
cat /proc/cpuinfo | grep "model name"

//Ejercicio2
cat /proc/cpuinfo | grep "model name" | wc -l

//Ejercicio3
wget https://www.gutenberg.org/files/11/11-0.txt && cat 11-0.txt | grep Alice | sed -e 's/Alice/Agustin/g' > agustin-in-wonderland.txt && rm 11-0.txt

//Ejercicio4
cat weather_cordoba.in | sort -n +4 | awk '{print $1,$2,$3}' > sorted_weather.txt; cat sorted_weather.txt | tail -n1 > max.txt; cat sorted_weather.txt | head -n1 > min.txt //Para una mejor lectura, cada resultado se guardará en un archivo distinto. Muestra solo la fecha al ordenar.

//Ejercicio5
cat Archivos\ de\ datos-20200830/atpplayers.in | sort -n +2 | awk '{print $1,$3}' > ranking.txt //Muestra solo el nombre del jugador y el ranking

//Ejercicio6
cat superliga.in |sort -n +1 -r -n +6 > points.txt

//Ejercicio7
ip link show enp1s0 | awk '/ether/ {print $1,$2}'

//Ejercicio8

mkdir Daredevil && touch Daredevil fma_S01E{1..100}_es.srt && mv *.srt Daredevil //Crear carpeta con archivos

cd Daredevil/ && rename 's/_es//g' *.srt && cd .. //Renombrar todos los archivos
