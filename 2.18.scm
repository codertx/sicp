(define (reverse l)
    (define (iter rl ol)
        (if (null? ol)
            rl
            (iter (cons (car ol) rl) (cdr ol))))
    (iter (list) l))
