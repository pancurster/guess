#!/usr/bin/env bash

correct_answer=`perl6 -e "print (1..100).pick"`; # :)
score=0;

while [[ true ]]; do

    echo "Guess number I think of:";
    read answer;
    score=$(($score+1));

    if [[ $answer > $correct_answer ]]; then
        echo "Too BIG!";
    elif [[ $answer < $correct_answer ]]; then
        echo "Too SMALL!";
    elif [[ $answer == $correct_answer ]]; then
        break;
    fi
done
echo "You WIN!";
echo "Score: $score";

