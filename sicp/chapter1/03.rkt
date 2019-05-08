#lang sicp

(#%require rackunit)

(define (sum-of-squares x y)
  (+
    (* x x)
    (* y y)))

(define (solution x y z)
  (cond ([and (<= x y) (<= x z)] (sum-of-squares y z))
        ([and (<= y x) (<= y z)] (sum-of-squares x z))
        ([and (<= z x) (<= z y)] (sum-of-squares x y))))

(check-equal? (solution 1 2 3 ) 13)
(check-equal? (solution 2 5 2 ) 29)
(check-equal? (solution 1 1 1 ) 2)
(check-equal? (solution 3 2 1 ) 13)
