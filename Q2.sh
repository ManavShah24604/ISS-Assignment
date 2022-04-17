#!/bin/bash
touch speech.txt
while IFS= read -r line

do
  pre=`cut -d "~" -f2- <<< "$line"` 
  s=`echo $line | cut -d "~" -f1` # Taking the input and checking '~'
  if [ -z "$line" ]
  then
    continue
  else
     echo "$pre once said,\"" $s"\"" >> speech.txt
  fi
done < "quotes.txt"