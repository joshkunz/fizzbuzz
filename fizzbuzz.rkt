#lang racket

(define (fizzbuzz from to)
 (let* ([div (lambda (x y) 
              (zero? (modulo x y)))]
        [fizz (if (div from 3) "Fizz" "")]
        [buzz (if (div from 5) "Buzz" "")])
  (printf "~a ~a~a~n" from fizz buzz)
  (if (< from to)
   (fizzbuzz (+ from 1) to)
   (void)
  )
 )
)

(fizzbuzz 1 100)
