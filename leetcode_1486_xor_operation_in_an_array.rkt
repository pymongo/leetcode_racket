#lang racket
(define/contract (xor-operation n start)
  (-> exact-integer? exact-integer? exact-integer?)
  (if
   (= n 1)
   start
   (bitwise-xor
    start
    (xor-operation (- n 1) (+ start 2))
    )
   )
  )
(require racket/trace)
(trace xor-operation)
(xor-operation 5 0)