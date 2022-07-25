(define (double x) (+ x x))
(define (halve x) (/ x 2)) 


(define (iter-fast-product a b) 
    (define (iter n a b)
        (cond
            ((= 0 n) b)
            ((even? n) (iter (halve n) (double a) b))
            (else (iter (- n 1) a (+ a b)))
        )
    )
    (iter b a 0)
)





(display "6 is expected. And output is:")
(display (iter-fast-product 2 3))
(newline)
(display "6 is expected. And output is:")
(display (iter-fast-product 3 2))
(newline)
(display "8 is expected. And output is:")
(display (iter-fast-product 4 2))
(newline)
(display "15 is expected. And output is:")
(display (iter-fast-product 5 3))
(newline)
(display "12 is expected. And output is:")
(display (iter-fast-product 6 2))
(newline)
(display "18 is expected. And output is:")
(display (iter-fast-product 6 3))

(exit)
