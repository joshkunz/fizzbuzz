# Language: CoffeeScript (http://coffeescript.org/)
# To run:
# $ coffee fizzbuzz.coffee

for num in [0..100]
    out = num + " "
    if num % 3 == 0 then out += "Fizz"
    if num % 5 == 0 then out += "Buzz"
    console.log out
