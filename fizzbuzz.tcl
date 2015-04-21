proc fizzbuzz {from to} {
    for {set i $from} {$i <= $to} {incr i} {
        set f [if {$i % 3 == 0} {list "Fizz"} else {list}]
        set b [if {$i % 5 == 0} {list "Buzz"} else {list}]
        if { [llength "$f$b"] < 1 } {
            puts "$i"
        } else {
            puts "$f$b"
        }
    }
}

fizzbuzz 1 100
