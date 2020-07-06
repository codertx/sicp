#lang racket

(define (fold-left op initial sequence)
    (if (null? sequence)
        initial
        (folder-left op
                     (op (car sequence)
                         initial)
                     (cdr sequence))))

(define (fold-right op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (folder-right op
                          initial
                          (cdr sequence)))))

(display (fold-right list null (list 1 2 3)))
(display (fold-left list null (list 1 2 3)))

; the op that order of parameters doesn't matter
; can produce the same values for any sequence
