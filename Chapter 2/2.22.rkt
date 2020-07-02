#lang racket

(define (square-list items)
    (define (iter things answer)
        (if (null? things)
            answer
            (iter (cdr things)
                (append answer (list (* (car things) (car things)))))))
    (iter items null))

(square-list '(1 2 3 4))
