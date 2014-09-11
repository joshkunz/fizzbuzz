/* Language: Objective-C ( https://en.wikipedia.org/wiki/Objective-C )
 * To Run:
 * $ clang fizzbuzz.m -framework Foundation && ./a.out */

#include <Foundation/Foundation.h>

void fizzbuzz(int from, int to) {
    NSMutableString *str; 
    for (; from < to; from++) {
        bool printed = false;
        str = [[NSMutableString alloc] init];
        if (from % 3 == 0) {
            [str appendString:@"Fizz"];
            printed = true;
        } 
        if (from % 5 == 0) {
            [str appendString:@"Buzz"];
            printed = true;
        }
        if (! printed) {
            [str appendFormat:@"%d", from];
        }
        NSLog(@"%@", str);
        [str release];
    }
}

int main() {
    fizzbuzz(1, 100);
    return 0;
}
