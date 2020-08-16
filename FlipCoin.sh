#!/bin/bash -x

ranCheck=$((RANDOM % 2))
if [ $ranCheck -eq 0 ]
then
        echo "Tails"
else
        echo "Heads"
fi
