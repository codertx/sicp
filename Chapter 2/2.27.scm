(define (deep-reverse l)
    (cond ((null? l) (list))
          ((not (pair? l)) l)
          (else (append (deep-reverse (cdr l)) (list (deep-reverse (car l)))))))
