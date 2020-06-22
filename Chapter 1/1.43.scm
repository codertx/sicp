(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (define (iter current result)
    (if (= current 0)
        result
        (iter (- current 1) (compose f result))))
  (iter (- n 1) f))
