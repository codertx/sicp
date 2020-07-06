#lang racket

(define (fold-left op initial sequence)
    (if (null? sequence)
        initial
        (fold-left op
                     (op (car sequence)
                         initial)
                     (cdr sequence))))

(define (fold-right op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (fold-right op
                          initial
                          (cdr sequence)))))

(define (reverse-right sequence)
    (fold-right (lambda (x y)
                        (append y
                                (list x)))
                null
                sequence))

(define (reverse-left sequence)
    (fold-left (lambda (x y)
                       (cons x y))
                null
                sequence))

(display (reverse-right (list 1 2 3 4 5 6)))
(display (reverse-left (list 1 2 3 4 5 6)))
