# Language AWK (https://www.gnu.org/software/gawk)
# To run:
# $ awk -f fizzbuzz.awk
BEGIN {
    for (i = 0; i <= 100; i++) {
        printf "%d ", i
        if (i % 3 == 0) {
            printf "Fizz"
        }
        if (i % 5 == 0) {
            printf "Buzz"
        }
        print
    }
}
