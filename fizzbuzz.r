# Language: R (http://www.r-project.org/)
# To run: r --slave -f fizzbuzz.r

f <- function(n) { if (n %% 3 == 0) { "Fizz" } else { "" } }
b <- function(n) { if (n %% 5 == 0) { "Buzz" } else { "" } }
fizzbuzz <- function(from, to) {
    for (i in seq(from, to)) {
        r = sprintf("%s%s", f(i), b(i))
        if (r == "") { r = sprintf("%d", i) }
        invisible(write(r, stdout()))
    }
}

fizzbuzz(1, 100)
