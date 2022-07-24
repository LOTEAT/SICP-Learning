(define (f-recursive n)
    (if (< n 3)
        n
        (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))
    )
)

(display "f-recursive testing:")
(newline)
(display "0 is expected. And output is:")
(display (f-recursive 0))
(newline)
(display "1 is expected. And output is:")
(display (f-recursive 1))
(newline)
(display "2 is expected. And output is:")
(display (f-recursive 2))
(newline)
(display "4 is expected. And output is:")
(display (f-recursive 3))
(newline)
(display "11 is expected. And output is:")
(display (f-recursive 4))
(newline)
(display "25 is expected. And output is:")
(display (f-recursive 5))



(define (f-iteration n)
    (define (f-iter-helper a b c cnt)
        (cond 
            ((< n 3) n) 
            ((< cnt 3) c) 
            (else (f-iter-helper b c (+ c (* 2 b) (* 3 a)) (- cnt 1)))
        )
    )
    (f-iter-helper 0 1 2 n)
)

(newline)
(display "f-recursive testing:")
(newline)
(display "0 is expected. And output is:")
(display (f-iteration 0))
(newline)
(display "1 is expected. And output is:")
(display (f-iteration 1))
(newline)
(display "2 is expected. And output is:")
(display (f-iteration 2))
(newline)
(display "4 is expected. And output is:")
(display (f-iteration 3))
(newline)
(display "11 is expected. And output is:")
(display (f-iteration 4))
(newline)
(display "25 is expected. And output is:")
(display (f-iteration 5))

(exit)