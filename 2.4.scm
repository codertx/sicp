(define (cdr z)
    (z (lambda (p q) q)))

(define (car z)
  (z (lambda (p q) p)))

(define (cons x y)
    (lambda (m) (m x y)))
