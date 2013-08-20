# Language: Ruby (http://www.ruby-lang.org/)
# To Run: $ ruby fizzbuzz.rb
(1..100).each do |x|
    fizz = x % 3 == 0 ? "Fizz" : ""
    buzz = x % 5 == 0 ? "Buzz" : ""
    puts "#{x} #{fizz + buzz}"
end
