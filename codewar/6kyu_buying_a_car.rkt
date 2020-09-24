; (6kyu) Buying a car
; https://www.codewars.com/kata/554a44516729e4d80b000012

#lang racket
(provide nb-months)

(define (nb-months start-price-old start-price-new saving-per-month percent-loss-per-month)
  (let loop ([price-old start-price-old]
             [price-new start-price-new]
             [percent-loss (* (- 100 percent-loss-per-month) 1/100)]
             [loss-more-next-month #t]
             [current 0]
             [count 0])
    (let ([available (- (+ price-old current) price-new)])
      (if (>= available 0)
          (list count (exact-round available))
          (let ([lost-next-month (if loss-more-next-month 0.005 0)])
            (loop (* price-old percent-loss)
                  (* price-new percent-loss)
                  (- percent-loss lost-next-month)
                  (not loss-more-next-month)
                  (+ current saving-per-month)
                  (add1 count)))))))