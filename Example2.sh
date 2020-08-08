#!/bin/bash -x

for (( counter=0; counter<10; counter++ ))
do
	arrValues[(($counter))]=$((RANDOM%900+100))
done
echo "Before sort: " ${arrValues[@]} 

for (( i=0; i<10; i++ ))
do
	for (( j=i+1; j<10; j++ ))
	do
		if [[ arrValues[i] -gt arrValues[j] ]]
		then
			temp1=${arrValues[j]}
			arrValues[j]=${arrValues[i]}
			arrValues[i]=$temp1
		fi
	done
done
echo "After sort: " ${arrValues[@]}

echo "Second Smallest :" ${arrValues[1]}
echo "Second Highest :" ${arrValues[8]}
