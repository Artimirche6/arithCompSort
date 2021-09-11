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

declare -a resultPrint

n=0
max=4

while [ $n -lt 4 ]
do 
	resultPrint[((n++))]=${result[$n]}
done

echo ${resultPrint[*]}

#Desc
for (( i=0; i<$max; i++ ))
do
        for (( j=i+1; j<$max; j++ ))
        do
                if [ "${resultPrint[i]}" -lt "${resultPrint[j]}" ]
                then
                        temp=${resultPrint[i]}
                        resultPrint[i]=${resultPrint[j]}
                        resultPrint[j]=$temp;
                fi
        
	done
	echo " Descending Order : " ${resultPrint[*]}

done

#Asce
for (( i=0; i<$max; i++ ))
do
        for (( j=i+1; j<$max; j++ ))
        do
                if [ "${resultPrint[i]}" -gt "${resultPrint[j]}" ]
                then
                        temp=${resultPrint[i]}
                        resultPrint[i]=${resultPrint[j]}
                        resultPrint[j]=$temp;
                fi
        done

	echo " Ascending Order : " ${resultPrint[*]}

done
