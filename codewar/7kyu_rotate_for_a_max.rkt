; (7kyu) Rotate for a Max
; https://www.codewars.com/kata/56a4872cbb65f3a610000026

#lang racket
(provide max-rot)

(define (rot str n)
  (format "~a~a~a"
          (substring str 0 n)
          (substring str (add1 n))
          (string-ref str n)))

(define (max-rot n)
  (let* ([str (number->string n)]
         [len (string-length str)])
    (for/fold ([num str]
               [max-num n] #:result max-num)
              ([i (range 0 len)])
      (values (rot num i) (max max-num (string->number num))))))