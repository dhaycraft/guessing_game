#!/usr/bin/env bash
# FIle: guessinggame.sh

file_count=$(ls -1 | wc -l)

while [ "$guess" != "$file_count" ]
do
        echo "Guess how many files are in the main directory:"
        read guess
        if [ "$guess" -lt "$file_count" ]
        then
                echo "That's too low!"
        elif [ "$guess" -gt "$file_count" ]
        then
                echo "That's too high!"
        elif [ "$guess" -eq "$file_count" ]
        then
                echo "That is correct! :) Bye!"
        else
                echo "What?"
        fi
done
