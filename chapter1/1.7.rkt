; Exercise 1.7

; our sqrt is ineffective for small numbers because the
; tolerance is too high


; our sqrt is ineffective for large numbers because
; floating point numbers aren't accurate enough

; new sqrt procedue

(define (square x)
  (* x x))

(define (sqrt-iter guess x delta)
  (if (< delta 0.00001)
      guess
      (sqrt-iter (improve guess x) x (abs (- (improve guess x) guess)))))

(define (improve guess x)
  (average guess (/ x  guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt-n x)
  (sqrt-iter 1.0 x 1))

(/ (- (sqrt-n 0.000000001) (sqrt 0.000000001)) (sqrt 0.000000001))