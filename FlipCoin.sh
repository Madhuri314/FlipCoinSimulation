#!/bin/bash -x

heads=0
tails=0

flipCoin() {
        ranCheck=$((RANDOM % 2))
        if [ $ranCheck -eq 0 ]
        then
                ((tails++))
        else
                ((heads++))
        fi
}

while [[ ($tails -le 21) || ($heads -le 21) ]]
do
        flipCoin
done

echo $heads
echo $tails

if [ $heads -eq $tails ]
then
        while [[ ( $(( $heads-$tails )) -ne 2 ) || ( $(( $tails-$heads )) -ne 2 ) ]]
        do
                flipCoin
        done

elif [ $heads -gt $tails ]
then
        echo "Heads wins"
elif [ $heads -lt $tails ]
then
        echo "Tails wins"
fi
