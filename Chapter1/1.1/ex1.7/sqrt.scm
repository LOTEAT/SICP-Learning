(define limit-rate 0.001)

(define (good-enough? cur-guess next-guess)
    (< (abs (- cur-guess next-guess)) (* limit-rate cur-guess))
)

(define (average x y) 
    (/ (+ x y) 2)
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (sqrt-iter guess x)
    (define next-guess (improve guess x))
    (if (good-enough? guess next-guess)
        guess
        (sqrt-iter next-guess x)
    )
)

(define (sqrt x)
    (sqrt-iter 1.0 x)
)

(display "5 is expected. And output is:")
(display (sqrt 25))
(newline)
(display "10 is expected. And output is:")
(display (sqrt 100))
(newline)
(display "6 is expected. And output is:")
(display (sqrt 36))
(newline)
(display "1.414 is expected. And output is:")
(display (sqrt 2))
(newline)
(display "1.732 is expected. And output is:")
(display (sqrt 3))

(exit)