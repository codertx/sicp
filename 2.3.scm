(define (make-rect width height)
    (cons width height))

(define (rect-width rect)
    (car rect))

(define (rect-height rect)
    (cdr rect))

(define (rect-perimeter rect)
    (* 
        (+
            (rect-width rect)
            (rect-height rect))
        2))
