(define (make-interval a b) (cons a b))

(define (lower-bound interval)
  (if (> (car interval) (cdr interval))
      (cdr interval)
      (car interval)))

(define (upper-bound interval)
  (if (> (cdr interval) (car interval))
      (cdr interval)
      (car interval)))