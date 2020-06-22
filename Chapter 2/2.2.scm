(define (make-segment start-x start-y end-x end-y)
  (cons (make-point start-x start-y) (make-point end-x end-y)))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (average-point p1 p2)
  (make-point
    (/ (+
         (x-point p1) (x-point p2))
       2)
    (/ (+
         (y-point p1) (y-point p2))
       2)))

(define (midpoint-segment segment)
  (average-point
   (start-segment segment)
   (end-segment segment)))

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
  (newline))

(print-point (midpoint-segment (make-segment 1 1 5 5)))