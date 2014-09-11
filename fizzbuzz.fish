# Language Fish Shell
# To run: fish fizzbuzz.fish

function fizzbuzz
    for i in (seq $argv[1] $argv[2])
        echo -n "$i "
        if test (math "$i % 3") -eq 0
            echo -n "Fizz"
        end
        if test (math "$i % 5") -eq 0
            echo -n "Buzz"
        end
        echo
    end
end

fizzbuzz 1 100
