#!/bin/bash -x

count=0
for (( counter=1; counter<=100; counter++ ))
do
	if [[ $counter%11 -eq 0  ]]
	then
		arrValues[count++]=$counter
	fi
done

echo "Number repeated twice: " ${arrValues[@]}
