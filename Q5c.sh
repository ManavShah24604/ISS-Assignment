#!/bin/bash
echo "Enter the string"
read str
n=`expr "$str" : "$str"`
for((i=(($n/2)) - 1;i>=0;i--))
do
    echo -n ${str:i:1}
done
for((i=(($n/2 + 1)) - 1;i<=n;i++))
do
    echo -n ${str:i:1}
done
echo 