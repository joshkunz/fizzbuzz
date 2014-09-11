# Language: R (http://www.r-project.org/)
# To run: r --slave -f fizzbuzz.r

f <- function(n) { if (n %% 3 == 0) { "Fizz" } else { "" } }
b <- function(n) { if (n %% 5 == 0) { "Buzz" } else { "" } }
fizzbuzz <- function(from, to) {
    for (i in seq(from, to)) {
        rs = sprintf("%d %s%s", i, f(i), b(i))
        invisible(write(rs, stdout()))
    }
}

fizzbuzz(1, 100)
