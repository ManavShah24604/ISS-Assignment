#!/bin/bash
read -r line
arr=(${line//,/ })

echo "Array in original order"
echo ${arr[*]}
n=${#arr[*]}

for ((it=0; it<n; it++))
do
    
    for((j=0; j<n-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}