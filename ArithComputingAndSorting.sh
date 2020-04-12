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
Dict[Compute1]=$arithCompute1
Dict[Compute2]=$arithCompute2
Dict[Compute3]=$arithCompute3
Dict[Compute4]=$arithCompute4
echo "All Computation Result" ${Dict[@]}
echo "Reading values from dict into array"
Arr[Values]=${Dict[@]}
echo ${Arr[@]}
