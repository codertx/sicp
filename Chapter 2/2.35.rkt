#lang racket

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
    (accumulate (lambda (curr higher-terms)
                        (+ higher-terms curr))
                0
                (map (lambda (val)
                             (if (pair? val)
                                 (count-leaves val)
                                 1))
                     t)))

(display (count-leaves (list 1 2 3 4 (list 2 3 4) (list 4 5 6))))
