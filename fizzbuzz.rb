# Language: Ruby (http://www.ruby-lang.org/)
# To Run: $ ruby fizzbuzz.rb
(1..100).each do |x|
    fizz = x % 3 == 0 ? "Fizz" : ""
    buzz = x % 5 == 0 ? "Buzz" : ""
    if not (fizz.empty? and buzz.empty?) then
        puts "#{fizz + buzz}"
    else
        puts "#{x}"
    end
end
