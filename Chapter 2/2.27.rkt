#lang racket

(define (deep-reverse lst)
    (if (not (pair? lst))
        lst
        (append
            (deep-reverse (cdr lst))
            (list (deep-reverse (car lst))))))

(deep-reverse (list (list 1 2) (list 3 4)))
