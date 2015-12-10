#!/usr/bin/env python
# -*- coding: utf-8 -*-
from random import randrange

def guess(numToGuess):
    score = 0
    while (1):
        x = int(raw_input())
        score += 1
        if x == numToGuess:
            print "You Win!"
            return score
        elif x > numToGuess:
            print "Smaller"
        else:
            print "Bigger"

if __name__ == "__main__":
    print "Guess number I think of"
    print "Score: %d" % guess(randrange(0, 100))
