#!/bin/bash
echo Enter a string
read str
n=`expr "$str" : "$str"`
for((i=$n - 1;i>=0;i--))
do
    echo -n ${str:i:1}
done
echo 