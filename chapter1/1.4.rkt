; if b is greater than zero we add a and b else we subtract b from a, which is equivalent to the sum of a and abs b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b ))

(a-plus-abs-b 2 -2)
(a-plus-abs-b 2 2)