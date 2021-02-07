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

(define (sum2 a)
  (cond
    [(empty? a) 0]
    [(list? a) (+ (sum2 (car a)) (sum2 (cdr a)))]
    [(number? a) a]
    ; TODO should panic if list element is not a number
    [else 0]
    )
  )

(trace sum2)
(sum2 (list (list 1 2 3) 4))