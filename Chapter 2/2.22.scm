(define (for-each procedure list)
    (define (iter rl)
        (cond
            ((null? rl) #t)
            (else (procedure (car rl))
                  (iter (cdr rl)))))
    (iter list))
