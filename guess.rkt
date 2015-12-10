#!/usr/bin/env racket
#lang scheme

(define (game num-to-guess)
  (define (guess x score)
    (cond
      [(= x num-to-guess)
       (print "You WIN! Score:")
       (println score)]
      [(> x num-to-guess)
       (println "Smaller")
       (guess (read) (+ score 1))]
      [(< x num-to-guess)
       (println "Bigger")
       (guess (read) (+ score 1))]))
  (println "Guess number I think of")
  (guess (read) 1))

(game (floor (* 100 (random))))
