; Scheme (http://www.scheme.com)
; To Run: scheme fizzbuzz.scm
;             -- or -- 
;         guile -s fizzbuzz.scm

(define div?
 (lambda (a b)
  (if (zero? (modulo a b)) #t #f)
 )
)

(define fizz
 (lambda (n)
  (if (div? n 3) (display "Fizz") #f)
 )
)

(define buzz
 (lambda (n)
  (if (div? n 5) (display "Buzz") #f)
 )
)

(define fizzbuzz
 (lambda (from to)
  (if (<= from to) (begin 
       (display from) (write-char #\ )
       (fizz from) 
       (buzz from) (newline)
       (fizzbuzz (+ from 1) to)
   )
  )
 )
)


(fizzbuzz 1 100)
