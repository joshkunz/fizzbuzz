// Language: Rust (but a more complicated example)
// To Run: rustc fizzbuzz-traits.rs && ./fizzbuzz-traits

use std::iter;

struct FizzBuzz {
    from : i32
  , to : i32
}

impl FizzBuzz {
    fn new(f : i32, t : i32) -> FizzBuzz {
        FizzBuzz { from: f, to: t }
    }
}

impl iter::Iterator for FizzBuzz {
    type Item = String;

    fn next(&mut self) -> Option<Self::Item> {
        if self.from > self.to {
            Option::None
        } else {
            let fizzy = self.from % 3 == 0;
            let buzzy = self.from % 5 == 0;
            let ret = if ! (fizzy || buzzy) {
                format!("{}", self.from)
            } else {
                format!("{}{}", if fizzy { "Fizz" } else { "" }
                              , if buzzy { "Buzz" } else { "" } )
            };
            self.from += 1;
            Option::Some(ret.to_string())
        }
    }
}

fn main () {
    for i in FizzBuzz::new(1, 100) {
        println!("{}", i);
    }
}
