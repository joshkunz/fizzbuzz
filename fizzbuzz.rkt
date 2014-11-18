#lang racket
; To Run: $ racket fizzbuzz.rkt

(define (fizzbuzz from to)
 (let* ([div? (lambda (x y) 
              (zero? (modulo x y)))]
        [fizz (if (div? from 3) "Fizz" "")]
        [buzz (if (div? from 5) "Buzz" "")])
  (if (not (string=? (string-append fizz buzz) ""))
   (printf "~a~a" fizz buzz)
   (display from))
  (newline)
  (if (< from to)
   (fizzbuzz (+ from 1) to)
   (void)
  )
 )
)

(fizzbuzz 1 100)
