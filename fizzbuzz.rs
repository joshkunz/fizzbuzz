// Language: Rust
// To Run: rustc fizzbuzz.rs && ./fizzbuzz

fn fizzbuzz(start : i32, stop : i32) {
    let fb = (start..(stop + 1)).map(|cur| {
        let name = format!("{}{}", if cur % 3 == 0 { "Fizz" } else { "" }
                                 , if cur % 5 == 0 { "Buzz" } else { "" } );
        if name == "" { format!("{}", cur) } else { name }
    });
    for i in fb { println!("{}", i) };
}

fn main () {
    fizzbuzz(1, 100);
}
