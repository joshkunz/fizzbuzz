/* Language: C ( https://en.wikipedia.org/wiki/C_(programming_language) )
 * To Run:
 * $ gcc fizzbuzz.c && ./a.out */

#include <stdio.h>

void fizzbuzz(int from, int to) {
    for (; from <= to; from++) {
        int printed = 0;
        if (from % 3 == 0) {
            printf("Fizz");
            printed = 1;
        } 
        if (from % 5 == 0) {
            printf("Buzz");
            printed = 1;
        }
        if (! printed) {
            printf("%d ", from);
        }
        printf("\n");
    }
}

int main() {
    fizzbuzz(1, 100);
    return 0;
}
