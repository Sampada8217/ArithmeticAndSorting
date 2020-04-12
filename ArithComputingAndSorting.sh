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
