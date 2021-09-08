#! /bin/bash -x

"Welcome to Arithmetic Computation and Sorting"

read -p "Enter the num a : " a
read -p "Enter the num b : " b
read -p "Enter the num c : " c

n1=$(($a+$b*$c))
n2=$(($a*$b+$c))
n3=$(($a%$b+$c))
n4=$(($c+$a/$b))

declare -A result

result["0"]=$n1
result["1"]=$n2
result["2"]=$n3
result["3"]=$n4

n=0

declare -a resultPrint

while [ $n -lt 4 ]
do 
	resultPrint[((n++))]=${result[$n]}
done
