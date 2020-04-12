#!/bin/bash -x
echo "Enter Three Inputs"
read a
read b
read c

echo $a $b $c

arithCompute1=$(( $a + $b * $c ))
echo $arithCompute1

arithCompute2=$(( $a * $b + $c ))
echo $arithCompute2

arithCompute3=$(( $c + $a / $b ))
echo $arithCompute3

arithCompute4=$(( $a % $b + $c ))
echo $arithCompute4

declare -A Dict
Dict[1]=$arithCompute1
Dict[2]=$arithCompute2
Dict[3]=$arithCompute3
Dict[4]=$arithCompute4

echo "All Computation Result" ${Dict[@]}

echo "Reading values from dict into array"
Arr[0]=${Dict[1]}
Arr[1]=${Dict[2]}
Arr[2]=${Dict[3]}
Arr[3]=${Dict[4]}
echo ${Arr[@]}
echo "Original Array"
for (( i=0; i<4; i++ ))
do
	echo ${Arr[$i]}
done

for (( i=0; i<4; i++ ))
do
	for (( j=$i; j<4; j++ ))
	do
		if [ ${Arr[$i]} -lt ${Arr[$j]} ];
		then
			temp=${Arr[$i]}
			Arr[$i]=${Arr[$j]}
			Arr[$j]=$temp
		fi
	done
done
echo -e "Sorted Results in Descending Order"
for (( i=0; i<4; i++ ))
do
	echo ${Arr[$i]}
done
echo ${Arr[@]}

echo -e "Sorted Results in Ascending Order"
for (( i=3; i>=0; i-- ))
do
	echo ${Arr[$i]}
done

