#!/bin/bash
if [ $UID -ne 0 ]; then
        echo "you need to run as root"
        exit
fi

states=("California" "Washington" "New York" "Hawaii" "Nevada")
for (( i = 0; i < ${#states[@]}; i++ )); do
        if [ "${states[$i]}" == "Hawaii" ]
        then
                echo "Hawaii is the best"
        else
                echo ${states[$i]} - "I don't like Hawaii"
        fi
done

range=$(echo {0..9})
for number in ${range[@]}
do
if [ $number = 3 ] || [ $number = 5 ] || [ $number = 7 ]
then
        echo $number
fi
done

files=('/etc/passwd' '/etc/shadow')
for file in ${files[@]}; do
         ls -l $file | awk -F" " {'print $1'}
done

