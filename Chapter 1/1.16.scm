;page 30

(define (exp base n)
    (exp-iter 1 base n))

(define (even? val)
    (= (remainder val 2) 0))

(define (exp-iter product base n)
    (if (= n 0)
        product
        (if (even? n)
            (exp-iter product (square base) (/ n 2))
            (exp-iter (* product base) base (- n 1)))))