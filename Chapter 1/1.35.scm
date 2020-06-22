;page 47

(define tolerance 0.000001)

(define (average a b)
    (/ (+ a b) 2))

(define (close-enough? test target)
    (< (abs (- test target)) tolerance))

(define (fixed-point f possible-value)
    (if (close-enough? (f possible-value) possible-value)
        possible-value
        (fixed-point f (f possible-value))))

(define phi
  (fixed-point (lambda (x) (+ 1 (/ 1 x)))
               1.0))

(display phi)
