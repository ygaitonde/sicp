(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; because p is recursively defined we will
; face infinite recursion in applicative-order eval
; in normal-order eval p would not be evaluated until
; the end, giving us 0.