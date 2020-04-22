(define (fringe l)
    (cond ((null? l) (list))
          ((not (pair? l)) (list l))
          (else (append (fringe (car l)) (fringe (cdr l))))))