(define (square x) (* x x))
(define (square-sum a b) (+ (square a) (square b)))
(define (squaresOfTwoLarge a b c)
    (cond 
        ((and (>= (+ a b) (+ a c)) (>= (+ a b) (+ b c))) (square-sum a b))
        ((and (>= (+ b c) (+ a b)) (>= (+ b c) (+ a c))) (square-sum b c))
        (else (square-sum a c))
    )
)

(display "25 is expected. And output is:")
(display (squaresOfTwoLarge 1 3 4))
(newline)
(display "10 is expected. And output is:")
(display (squaresOfTwoLarge 1 3 0))
(newline)
(display "36 is expected. And output is:")
(display (squaresOfTwoLarge 6 0 0))
(newline)
(display "85 is expected. And output is:")
(display (squaresOfTwoLarge 1 7 6))
(newline)
(display "50 is expected. And output is:")
(display (squaresOfTwoLarge 5 5 3))

(exit)