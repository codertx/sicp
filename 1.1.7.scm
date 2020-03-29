(define (sqrt-iter target possibleValue)
    (if (good-enough? possibleValue target)
        possibleValue
        (sqrt-iter target
            (improve possibleValue target))))

(define (improve possibleValue target)
    (average possibleValue (/ target possibleValue)))

(define (average num1 num2)
    (/ (+ num1 num2)
        2))

(define (good-enough? possibleValue target)
    (<  (abs (- (square possibleValue) target)) 0.001))

(define (sqrt target)
    (sqrt-iter target 1.0))
