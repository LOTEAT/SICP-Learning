(define limit-rate 0.001)

(define (good-enough? cur-guess next-guess)
    (< (abs (- cur-guess next-guess)) (* limit-rate cur-guess))
)

(define (average-3 x y) 
    (/ (+ x y) 3)
)

(define (square x)
    (* x x)
)

(define (improve guess x)
    (average-3 (/ x (square guess)) (* 2 guess))
)

(define (cqrt-iter guess x)
    (define next-guess (improve guess x))
    (if (good-enough? guess next-guess)
        guess
        (cqrt-iter next-guess x)
    )
)

(define (cqrt x)
    (cqrt-iter 1.0 x)
)

(display "5 is expected. And output is:")
(display (cqrt 125))
(newline)
(display "10 is expected. And output is:")
(display (cqrt 1000))
(newline)
(display "6 is expected. And output is:")
(display (cqrt 216))
(newline)
(display "1.414 is expected. And output is:")
(display (cqrt 2.82714594))
(newline)
(display "1.732 is expected. And output is:")
(display (cqrt 5.19569517))

(exit)