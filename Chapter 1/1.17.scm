;page 31

(define (fast-multi a b)
    (if (= b 1)
        a
        (if (even? b)
            (fast-multi (double a) (halve b))
            (+ a (fast-multi a (- b 1))))))

(define (even? value)
    (= (remainder value 2) 0))

(define (double value)
    (+ value value))

(define (halve value)
    (/ value 2))
