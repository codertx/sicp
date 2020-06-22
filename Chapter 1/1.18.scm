;page 31

(define (fast-multi a b)
    (fast-multi-iter 0 a b))

(define (fast-multi-iter product a b)
    (if (= b 0)
        product
        (if (even? b)
            (fast-multi-iter product (double a) (halve b))
            (fast-multi-iter (+ product a) a (- b 1)))))

(define (even? value)
    (= (remainder value 2) 0))

(define (double value)
    (+ value value))

(define (halve value)
    (/ value 2))
