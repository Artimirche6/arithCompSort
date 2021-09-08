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

result["1"]=$n1
result["2"]=$n2
result["3"]=$n3
result["4"]=$n4


