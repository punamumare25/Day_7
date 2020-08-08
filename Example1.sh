#!/bin/bash -x

for (( counter=0; counter<10; counter++ ))
do
	arrayNumber[(($counter))]=$((RANDOM%900+100))
done
echo ${arrayNumber[@]}

firstMax=${arrayNumber[0]}
secondMax=${arrayNumber[0]}
for (( counter=0; counter<10; counter++ ))
do
	if [[ ${arrayNumber[counter]} -gt $firstMax ]]
	then
		secondMax=$firstMax
		firstMax=${arrayNumber[counter]}
	elif [[ ${arrayNumber[counter]} -gt $secondMax ]]
	then
		secondMax=${arrayNumber[counter]}
	fi
done
echo "FirstMax: $firstMax"
echo "SecondMax: $secondMax"

firstMin=${arrayNumber[0]}
secondMin=${arrayNumber[0]}

for (( counter=0; counter<10; counter++ ))
do
	if [[ ${arrayNumber[counter]} -lt $firstMin ]]
	then
		secondMin=$firstMin
		firstMin=${arrayNumber[counter]}
	elif [[ ${arrayNumber[counter]} -lt $secondMin ]]
	then
		secondMin=${arrayNumber[counter]}
	fi
done
echo "FirstMin : " $firstMin
echo "SecondMin :" $secondMin
