( Language: Forth [https://en.wikipedia.org/wiki/FORTH]
  To Run:
  $ forth fizzbuzz.forth )
: ?DIV OVER SWAP MOD 0= ; ( n0 n1 -- n0 div )
: FB 
    1 + swap ( Go from 1..max + 1)
    ?DO I 
    3 ?DIV swap 5 ?DIV rot and IF 
        ." FizzBuzz" 
    ELSE 
        3 ?DIV IF 
            ." Fizz" 
        ELSE 
            5 ?DIV IF 
                ." Buzz" 
            ELSE 
                dup . 
            THEN 
        THEN 
    THEN 
    CR DROP LOOP ; ( n n -- )
1 100 FB bye
