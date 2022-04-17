#!/bin/bash
FILENAME=$1
size="$(wc -c <"$1")"
echo "Size of $FILENAME = $size bytes."
lines="$(wc -l <"$1")"
echo "The number of lines in $1 is $lines"
words="$(wc -w <"$1")"
echo "The number of words in $1 is $words"
i=0
while IFS= read -r line
do
    ((i++))
    count="$(echo $line | wc -w)"
    echo "Line number$i : $count"
done < "$1"
i=0
declare -a arr
declare -a ccount
while read line; 
do
    for word in $line; 
    do
        ((i++))
        arr[i]=$word
        ccount[i]=1
        for((j=1;j<i;j++))
        do
            if [ ${arr[i]} == ${arr[j]} ]
            then
                ((ccount[j]++))
                break
            fi
        done
    done
done < "$1"
i=1
j=1
while read line; 
do
    for word in $line; 
    do
        if [ ${ccount[i]} -gt 1 ]
        then
            
            echo ${arr[i]} : ${ccount[i]} 
        fi
        ((i++))
    done
done < "$1"


