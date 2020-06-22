(define (clean? num divisor)
    (not (= (remainder num divisor) 0)))

(define (clear-divisor num divisor)
    (if (clean? num divisor)
        num
        (clear-divisor (/ num divisor) divisor)))

(define (cons a b)
    (* (expt 2 a) (expt 3 b)))

(define (car rat-num)
    (log (clear-divisor rat-num 2) 3))

(define (cdr rat-num)
    (log (clear-divisor rat-num 3) 2))
