#!/bin/bash
echo Enter a string
read str
n=`expr "$str" : "$str"`
declare -a arr

for((i=$n - 1;i>=0;i--))
do

  y=${str:i:1}   
    y=$(echo "$y" | tr "0-9a-z" "1-9a-za")
   # let arr=`expr $arr + 1`
  
    echo -n "$y"
    
done
echo