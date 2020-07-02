#lang racket

(define (for-each proc lst)
    (if (null? lst)
        #t
        (and (proc (car lst))
            (for-each proc (cdr lst)))))

(for-each print '(1 2 3 4))
