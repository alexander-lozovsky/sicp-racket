#lang sicp

(#%require rackunit)

(define (good-enough? old-guess guess)
  (< (abs (- old-guess guess)) 0.0001))

(define (improve guess x)
  (/
    (+
      (/ x (* guess guess))
      (* 2 guess))
    3))

(define (curt-iter oldguess guess x)
  (if (good-enough? oldguess guess)
      guess
      (curt-iter guess (improve guess x) x)))

(define (curt x)
  (curt-iter 0 1.0 x))

(check-equal? (round (curt 27)) 3.0)
(check-equal? (round (curt 8)) 2.0)
