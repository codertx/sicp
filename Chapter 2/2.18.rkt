#lang racket

(define (reverse l)
    (if (null? l)
        null
        (append
            (reverse (cdr l))
            (list (car l)))))

(reverse '(1 2 3 4 5))
