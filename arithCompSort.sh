#! /bin/bash -x

"Welcome to Arithmetic Computation and Sorting"

read -p "Enter the num a : " a
read -p "Enter the num b : " b
read -p "Enter the num c : " c

n1=$(($a+$b*$c))
n2=$(($a*$b+$c))
n3=$(($a%$b+$c))
