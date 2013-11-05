% Language: Prolog
% To run: $ gprolog --consult-file fizzbuzz.pl --entry-goal "main"

divs(X,Y) :- 0 is mod(X,Y).
fizzy(X) :- divs(X,3).
buzzy(X) :- divs(X,5).

fizzbuzz(X) :- fizzy(X), buzzy(X) -> print('FizzBuzz');
               fizzy(X) -> print('Fizz');
               buzzy(X) -> print('Buzz');
               R is X, print(R). 

fizzbuzzr(From,To) :- From =< To, 
                        fizzbuzz(From), nl,
                      fizzbuzzr(From+1, To); 
                      true.

main :- fizzbuzzr(1,100), halt.
