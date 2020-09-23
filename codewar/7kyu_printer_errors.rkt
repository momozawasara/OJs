; (7kyu) Printer Errors
; https://www.codewars.com/kata/56541980fa08ab47a0000040

#lang racket
(provide printer-error)

(define (printer-error s)
  (let-values ([(x y) (for/fold ([x 0] [y 0])
                                ([c (in-string s)])
                        (values ((if (char>? c #\m) add1 identity) x) (add1 y)))])
    (format "~a/~a" x y)))