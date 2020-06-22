(define (make-interval a b) (cons a b))

(define (lower-bound interval)
  (if (> (car interval) (cdr interval))
      (cdr interval)
      (car interval)))

(define (upper-bound interval)
  (if (> (car interval) (cdr interval))
      (car interval)
      (cdr interval)))

(define (sub-interval in1 in2)
    (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))
