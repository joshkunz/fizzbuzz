# Language: GDB's scripting commands 
#   (see https://sourceware.org/gdb/current/onlinedocs/gdb/Sequences.html)
#
# To run: gdb -x fizzbuzz.gdb

define fizzbuzz
    if $argc == 2
        set $from = $arg0
        set $to = $arg1
    else
        set $from = 1
        set $to = $arg0
    end

    while $from <= $to
        printf "%d ", $from
        if $from % 3 == 0
            echo Fizz
        end 
        if $from % 5 == 0
            echo Buzz
        end
        echo \n
        set $from = $from + 1
    end
end

fizzbuzz 1 100
quit
