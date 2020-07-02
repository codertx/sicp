#lang racket

(define (square x)
    (* x x))

(define (square-list items)
    (if (null? items)
        (list)
        (cons (square (car items)) (square-list (cdr items)))))

(define (square-list-map items)
    (map (lambda (x) (* x x)) items))

(square-list '(1 2 3))
(square-list-map '(1 2 3))
