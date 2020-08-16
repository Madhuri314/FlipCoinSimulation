#!/bin/bash -x

heads=0
tails=0

while [[ ($tails -le 21) || ($heads -le 21) ]]
do
        rancheck=$((RANDOM % 2))
        if [ $rancheck -eq 0 ]
        then
                ((tails++))
        else
                ((heads++))
        fi
done

echo $heads
echo $tails

if [ $heads -eq $tails ]
then
        echo "It's a tie"
elif [ $heads -gt $tails ]
then
        echo "Heads wins by" $(( $heads-$tails ))
elif [ $heads -lt $tails ]
then
        echo "Tails wins by" $(( $tails-$heads ))
fi
