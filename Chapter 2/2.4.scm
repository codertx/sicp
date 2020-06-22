(define (cdr z)
    (z (lambda (p q) q)))

(define (car z)
  (z (lambda (p q) p)))

(define (cons x y)
    (lambda (m) (m x y)))

; you could use subsitution model of section 1.1.5 to verify the anwser
