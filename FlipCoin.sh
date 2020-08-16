#!/bin/bash -x

read -p "Enter number of times you want to flip a coin: " num

heads=0
tails=0
counter=0

while [ $counter -ne $num ]
do
        ((counter++))
        ranCheck=$((RANDOM % 2))
        if [ $ranCheck -eq 0 ]
        then
                ((tails++))
        else
                ((heads++))
        fi
done

echo "Heads: " $heads
echo "Tails: " $tails
