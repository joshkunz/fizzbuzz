/* Language: C ( https://en.wikipedia.org/wiki/C_(programming_language) )
 * To Run:
 * $ gcc fizzbuzz.c && ./a.out */

#include <stdio.h>

int main() {
    int i = 0;
    for (; i < 100; i++) {
        printf("%d ", i);
        if (i % 3 == 0) {
            printf("Fizz");
        } 
        if (i % 5 == 0) {
            printf("Buzz");
        }
        printf("\n");
    }
    return 0;
}
