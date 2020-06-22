; page 40

; original version
(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

; iter version
(define (sum-iter term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ (term a) result))))
    (iter a 0))
