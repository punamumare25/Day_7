#!/bin/bash -x

read -p "Enter a number : " numb
arrValue=0
for (( counter=2; numb!=1; counter++ ))
do
	count=0
	if [[ $numb%$counter -eq 0 ]]
	then
		count=1
		numb=$((numb/counter))
	fi

	if [[ $count -eq 1 ]]
	then
		arrPrimeFact[((arrValue++))]="$counter"
		counter=$((counter-1))
	fi
done

echo "output in array : " ${arrPrimeFact[@]}
