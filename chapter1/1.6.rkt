#| Exercise 1.6

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

This doesn't work because new-if is a function, which means that Scheme tries
to evaluate all of the arguments before evaluation. This causes infinite recursion.
|#

