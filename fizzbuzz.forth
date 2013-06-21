( Language: Forth [https://en.wikipedia.org/wiki/FORTH]
  To Run:
  $ forth fizzbuzz.forth )
: ?DIV OVER SWAP MOD 0= ; ( n0 n1 -- n0 div )
: F 3 ?DIV IF ." Fizz" THEN ; ( n -- n )
: B 5 ?DIV IF ." Buzz" THEN ; ( n -- n )
: FB DO I I . F B DROP CR LOOP ; ( n n -- )
101 0 FB bye
