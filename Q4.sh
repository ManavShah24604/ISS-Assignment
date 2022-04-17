#!/bin/bash
read -r line
declare -a arr
arr=(${line//,/ })

echo "Array in original order"
echo ${arr[*]}
  
number=${#arr[*]}

let temp=0
let i=0
let j=0
echo After Sorting
for((i=1;i<number;i++))
do 
    for((j=1;j<i;j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
             temp=${arr[$((j+1))]}
             arr[$((j+1))]=${arr[j]}
             arr[j]=$temp
        fi
    done
done
for((i=1;i<=number;i++))
do
    echo ${arr[$i]}
done
echo "End of program"
