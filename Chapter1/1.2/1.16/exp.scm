(define (square x) (* x x))

(define (iter-fast-expt b n) 
  (define (iter N B A) 
    (cond ((= 0 N) A) 
          ((even? N) (iter (/ N 2) (square B) A)) 
          (else (iter (- N 1) B (* B A))))) 
  (iter n b 1)) 




(display "8 is expected. And output is:")
(display (iter-fast-expt 2 3))
(newline)
(display "9 is expected. And output is:")
(display (iter-fast-expt 3 2))
(newline)
(display "16 is expected. And output is:")
(display (iter-fast-expt 4 2))
(newline)
(display "125 is expected. And output is:")
(display (iter-fast-expt 5 3))
(newline)
(display "36 is expected. And output is:")
(display (iter-fast-expt 6 2))
(newline)
(display "216 is expected. And output is:")
(display (iter-fast-expt 6 3))

(exit)
