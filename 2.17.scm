(define (last-pair l)
  (define (iter result lp)
    (if (nil? lp)
        result
        (iter (car lp) (cdr lp)))))

(last-pair (list 23 72 149 34))