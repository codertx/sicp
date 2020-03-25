; copy from 1.2.6.scm
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

; page 35

(define (time-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (current-second)))

(define (start-prime-test n start-time)
    (if (prime? n)
        (report-time (- (current-second) start-time))))

(define (report-time elapsed-time)
    (display "***")
    (display elapsed-time))

(define (search-for-prime n)
    (if (prime? n)
        (time-prime-test n)
        (search-for-prime (+ n 1))))

(search-for-prime 1000)
(search-for-prime 10000)
(search-for-prime 100000)
(search-for-prime 1000000)
(newline)