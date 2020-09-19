; (6kyu) Steps in Primes
; https://www.codewars.com/kata/5613d06cee1e7da6d5000055
#lang racket
(provide step)

(define (step distance start end)
  (or (for/first ([i (range start end)]
                  #:when (and (prime? i)
                              (< (+ distance i) end)
                              (prime? (+ distance i))))
        (cons i (+ i distance)))
      null))

(define (prime? n)
  (for/and ([i (in-range 2 (add1 (sqrt n)))])
    (not (zero? (modulo n i)))))