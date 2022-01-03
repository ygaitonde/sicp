(define (cube x)
  (* x x x))

(define (square x)
  (* x x))

(define (cbrt-iter guess x delta)
  (if (< delta 0.00001)
      guess
      (cbrt-iter (improve x guess) x (abs (- (improve x guess) guess)))))

(define (improve x y)
  (/
   (+ (/ x (square y)) (* 2 y))
   3))

(define (cbrt x)
  (cbrt-iter 1.0 x 1))