#lang racket

(define (pick-seven-eg1 lst)
    (car (cdr (car (cdr (cdr lst))))))
(pick-seven-eg1 (list 1 3 (list 5 7) 9))

(define (pick-seven-eg2 lst)
    (car (car lst)))
(pick-seven-eg2 (list (list 7)))

(define (pick-seven-eg3 lst)
    (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr (car (cdr lst)))))))))))))
(pick-seven-eg3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))