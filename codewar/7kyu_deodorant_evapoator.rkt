; (7kyu) Deodorant Evaporator
; https://www.codewars.com/kata/5506b230a11c0aeab3000c1f
#lang racket
(provide evaporator)

(define (evaporator _ evap-per-day threshold)
  (let loop ([remain 100] [day 0])
    (if (< remain threshold)
        day
        (loop (* remain (- 1 (* evap-per-day 1/100)))
              (add1 day)))))