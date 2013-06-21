dnl Language: M4 (https://www.gnu.org/software/m4)
dnl To Run: $ m4 fizzbuzz.m4
dnl
dnl Divert the output
divert(-1)

Define newline
define(`_NL', `
')
General division expansion
define(`divtext', `ifelse(eval($1 % $2), 0, $3)')

Fizz and Buzz expansion:
define(`fizz', `divtext($1, 3, `Fizz')')
define(`buzz', `divtext($1, 5, `Buzz')')

Called (var, start, end, text), it loops over some range:
define(`loop', `pushdef(`$1', $2)`'_loop($@)`'undefine(`$1')')
define(`_loop', `$4`'ifelse($1, $3, `', `pushdef(`$1', incr($1))`'$0($@)')')

Bringing it all together
define(`fizzbuzz', `loop(`i', $1, $2, `i fizz(i)`'buzz(i)`'_NL')')

Divert the output back to standard out
divert`'dnl
fizzbuzz(1, 100)dnl

And here's the single line version:
define(`_nl', esyscmd(`echo'))define(`div', `ifelse(eval($1 % $2), 0, $3)')define(`f', `div($1, 3, `Fizz')')define(`b', `div($1, 5, `Buzz')')define(`fb', `ifdef(`i', `', `pushdef(`i', $1)')ifelse(i, $2, `', `i f(i)`'b(i) _nl`'pushdef(`i', incr(i))fb($@)')')fb(1, 101)dnl
