; newLISP (http://newlisp.org)
; To Run: newlisp fizzbuzz.lsp
(define (div? what by) (= (% what by) 0))
(define (fizzbuzz (from 1) (to 100))
 (if (> from to) nil (begin
  (print from " ")
  (if (div? from 3) (print "Fizz"))
  (if (div? from 5) (print "Buzz"))
  (print "\n") 
  (fizzbuzz (+ from 1) to)
  )
 )
)
(fizzbuzz) (exit)
