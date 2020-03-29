(define tolerance 0.000001)

(define (average a b)
    (/ (+ a b) 2))

(define (close-enough? test target)
    (< (abs (- test target)) tolerance))

; half-interval-method
(define (search f a b)
    (define mid (average a b))
    (if (close-enough? (f mid) 0)
        mid
        (cond ((> (f mid) 0) (search f mid b))
            ((< (f mid) 0) (search f a mid)))))

(define (half-interval-method f a b)
    (cond ((and (> (f a) 0) (< (f b) 0)) (search f a b))
        ((and (> (f b) 0) (< (f a) 0)) (search f b a))
        (else (error "Values are not of opposite sign" a b))))


; find fixed-point
; 必须是吸引不动点(attractive fixed point)才能使用
; 比如 f(x) = 2x 的不动点是 x = 0，但它不是吸引不动点
(define (fixed-point f possible-value)
    (if (close-enough? (f possible-value) possible-value)
        possible-value
        (fixed-point f (f possible-value))))


; square-root with fixed-point
(define (sqrt x)
    (fixed-point (lambda (y) (/ (+ y (/ x y)) 2))
        1.0))
