#lang racket
(define (sum nums)
  (if (empty? nums)
      0
      ( + (car nums) (sum (cdr nums)) )
      )
  )
(require racket/trace)
(trace sum)
(sum (list 1 2 3))