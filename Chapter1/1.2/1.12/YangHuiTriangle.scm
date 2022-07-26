(define (YangHuiTriangle row col)
    (cond
        ((= col 1) 1)
        ((= col row) 1)
        (else (+ (YangHuiTriangle (- row 1) col) (YangHuiTriangle (- row 1) (- col 1))))
    )
)


(display "1 is expected. And output is:")
(display (YangHuiTriangle 1 1))
(newline)
(display "2 is expected. And output is:")
(display (YangHuiTriangle 3 2))
(newline)
(display "3 is expected. And output is:")
(display (YangHuiTriangle 4 2))
(newline)
(display "6 is expected. And output is:")
(display (YangHuiTriangle 5 3))
(newline)
(display "5 is expected. And output is:")
(display (YangHuiTriangle 6 2))
(newline)
(display "10 is expected. And output is:")
(display (YangHuiTriangle 6 3))

(exit)
