; page 47
; reference https://codology.net/post/sicp-solution-exercise-1-38/

(define (d i)
    (if (= (remainder i 3) 2)
        (* 2 (/ (+ i 1) 3))
        1))
