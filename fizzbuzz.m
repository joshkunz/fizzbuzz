/* Language: Objective-C ( https://en.wikipedia.org/wiki/Objective-C )
 * To Run:
 * $ clang fizzbuzz.m -framework Foundation && ./a.out */

#include <Foundation/Foundation.h>

int main() {
    int i = 0;
    NSMutableString *str; 
    for (; i < 100; i++) {
        str = [[NSMutableString alloc] initWithFormat:@"%d ", i];
        if (i % 3 == 0) {
            [str appendString:@"Fizz"];
        } 
        if (i % 5 == 0) {
            [str appendString:@"Buzz"];
        }
        NSLog(@"%@", str);
        [str release];
    }
    return 0;
}
