; 33

(define (prime? n)
    (= (smallest-divisor n) n))

(define (smallest-divisor n)
    (find-divisor n 2))

(define (find-divisor n number-to-test)
    (cond ((> (square number-to-test) n) n)
          ((divide? n number-to-test) number-to-test)
          (else (find-divisor n (+ number-to-test 1)))))

(define (divide? n number-to-test)
    (= (remainder n number-to-test) 0))
