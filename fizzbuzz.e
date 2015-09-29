# Language: E (http://www.erights.org/)
# To Run: $ rune fizzbuzz.e

# 'a': from, 'b': to
def fizzbuzz(a :int, b :int) {
    for i in a..b {
        def fizzy := if (i % 3 == 0) { "Fizz" } else { "" }
        def buzzy := if (i % 5 == 0) { "Buzz" } else { "" }
        if (fizzy == "" && buzzy == "") {
            println(`$i`)
        } else {
            println(`$fizzy$buzzy`)
        }
    }
}
fizzbuzz(1, 100)
