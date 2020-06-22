(define (f x)
    (if (< x 3)
        3
        (+ (f (- x 1)) (* (f (- x 2)) 2) (* (f (- x 3)) 3))))

(define (f2 x)
    (define (f-iter count v1 v2 v3 v0)
        (define v (+ v1 (* 2 v2) (* 3 v3)))
        (if (< count 3)
            (if (< v0 3)
                3
                v0)
            (f-iter 
                (- count 1)
                v
                v1
                v2
                v)))
    (f-iter x 3 3 3 0))
