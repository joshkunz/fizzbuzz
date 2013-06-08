/* Language: C++ (http://www.cplusplus.com/)
 * To run:
 * $ g++ fizzbuzz.cc && ./a.out */

#include <iostream>
using namespace std;

int main() {
    for (int i = 0; i <= 100; i++) {
        cout << i << " ";
        if (i % 3 == 0) {
            cout << "Fizz";
        }
        if (i % 5 == 0) {
            cout << "Buzz";
        }
        cout << endl;
    }
    return 0;
}
