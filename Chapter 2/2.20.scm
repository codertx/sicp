(define (same-parity . l)
    (define (iter sl rl)
        (if (null? sl)
            rl
            (let ((first-val (car sl))
                  (first-odd? (odd? (car l))))
                 (if (or 
                        (and first-odd? (odd? first-val))
                        (and (not first-odd?) (even? first-val)))
                    (iter (cdr sl) (append rl (list first-val)))
                    (iter (cdr sl) rl)))))
    (iter l (list)))
