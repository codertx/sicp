; page47

; recursive version
(define (cont-frac n d k)
  (define (recur count)
    (if (= count k)
      (/ (n k) (d k))
  	  (/ (n count) (+ (d count) (recur (+ count 1))))))
  (recur 1))

; iterative version
(define (cont-frac n d k)
  (define (iter current result)
    (if (= current 0)
      result
      (iter (- current 1)
        (/ (n 1) (+ (d 1) result)))))
  (iter k 0))