; (6kyu) Meeting
; https://www.codewars.com/kata/59df2f8f08c6cec835000012

#lang racket
(provide meeting)

(define (meeting s)
  (string-join
   (sort
    (map (lambda (name)
           (match (string-split name ":")
             [(list first last)
              (string-upcase (format "(~a, ~a)" last first))]))
         (string-split s ";"))
    string<?) ""))