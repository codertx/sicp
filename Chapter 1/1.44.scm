(define dx 0.1)

(define (smooth f)
  (lambda (x) (/ (+ (f x) (f (- x dx)) (f (+ x dx))) 3)))

(define (smooth-nth f n)
  ((repeated smooth n) f))
