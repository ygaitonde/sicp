(define (square x) (* x x))

(define (sum-squares a b c)
  (- (+ (square a)
        (square b)
        (square c)
        )
     (square (min a b c))))

(sum-squares 3 2 1)
(sum-squares 1 12 12)