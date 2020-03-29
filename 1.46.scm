(define (iterative-improve good-enough? improve)
  (lambda (x)
    (define (iter possible-value)
      (if (good-enough? possible-value)
        possible-value
        (iter (improve possible-value))))
    (iter x)))

;; not complete yet