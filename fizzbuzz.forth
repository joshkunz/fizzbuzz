( Language: Forth [https://en.wikipedia.org/wiki/FORTH]
  To Run:
  $ forth fizzbuzz.forth )
: ?DIV OVER SWAP MOD 0= ;
: F 3 ?DIV IF ." Fizz" THEN ; 
: B 5 ?DIV IF ." Buzz" THEN ;
: FB DO I I . F B DROP CR LOOP ;
101 0 FB bye
