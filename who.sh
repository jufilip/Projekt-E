 #!/bin/bash

clear
read -p "Svakih koliko minuta treba provjeravati tko je sve prijavljen? " n
echo "Broj minuta n je: $n"		#imamo broj minuta n

while true				#beskonacna petlja
do
	sleep ${n}m			#cekamo da prodje n minuta nakon cega...

	tko=$(who)			#... provjeravamo tko je sve prijavljen i...
	echo $tko >> log_history.log	#... to upisujemo u zadanu datoteku
	echo "Proslo $n minuta"		#Znak u terminalu da je jedno zapisivanje obavljeno
done
