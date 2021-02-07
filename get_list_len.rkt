#lang racket
(define a '(1, 1+4i, #f))
(list? a)
; car/first get first of list, cadr/caddr get 2th/3th of list
(cadr a)
; cdr/rest get list exclude first
(cdr a)

(define (len _list)
  (if (empty? _list)
      0
      (+ 1 (len (cdr _list)))
    )
  )
(require racket/trace)
(trace len)
(len '(1,2,3))
