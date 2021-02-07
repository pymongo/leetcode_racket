; TODO
#lang racket
; (list-ref nums 0) is similar to Vec::get(0) in Rust
; (cons nums 1): nums.insert(0,1) or nums.push_front(1)
(define/contract (running-sum nums)
  (-> (listof exact-integer?) (listof exact-integer?))
  nums
  )
