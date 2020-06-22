; copy from 1.2.6.scm
(define (prime? n)
    (= (smallest-divisor n) n))

(define (smallest-divisor n)
    (find-divisor n 2))

(define (next num)
        (if (= num 2)
            3
            (+ num 2)))

(define (find-divisor n number-to-test)
    (cond ((> (square number-to-test) n) n)
          ((divide? n number-to-test) number-to-test)
          (else (find-divisor n (next number-to-test)))))

(define (divide? n number-to-test)
    (= (remainder n number-to-test) 0))

; copy from 1.22.scm
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

(define (search-for-prime n target-count)
    (define (enough-count? current)
        (= current target-count))
    (define (search-iter n current)
        (if (prime? n)
            (list
                (time-prime-test n)
                (if (not (enough-count? current))
                    (search-iter (+ n 1) (+ current 1))))
            (search-iter (+ n 1) current)))
    (search-iter n 1))

; main
(search-for-prime 1000 3)
(search-for-prime 10000 3)
(search-for-prime 100000 3)
(search-for-prime 1000000 3)
(newline)