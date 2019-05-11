#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? old-guess guess)
  (< (abs (- old-guess guess)) 0.0001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter oldguess guess x)
  (if (good-enough? oldguess guess)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 0 1.0 x))

(check-equal? (round (sqrt 4)) 2.0)
(check-equal? (round (sqrt 9)) 3.0)
