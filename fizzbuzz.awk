# Language AWK (https://www.gnu.org/software/gawk)
# To run:
# $ awk -f fizzbuzz.awk

function fizzbuzz(from, to) {
    for (i = from; i <= to; i++) {
        printed = false
        if ((i % 3) + (i % 5) == 0) {
            print "FizzBuzz"
        }
        else if (i % 3 == 0) { print "Fizz" }
        else if (i % 5 == 0) { print "Buzz" }
        else { print i }
    }
}

BEGIN { fizzbuzz(1, 100) }
