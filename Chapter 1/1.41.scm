; page 51
; reference https://codology.net/post/sicp-solution-exercise-1-41/

(define (double f)
  (lambda (x)
    (f (f x))))

; answer to (((double (double double)) inc) 5)
; is 21