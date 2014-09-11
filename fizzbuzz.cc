/* Language: C++ (http://www.cplusplus.com/)
 * To run:
 * $ g++ fizzbuzz.cc && ./a.out */

#include <iostream>
using namespace std;

void fizzbuzz(int from, const int &to) {
    for (; from <= to; from++) {
        if ((from % 3) + (from % 5) == 0) {
            cout << "FizzBuzz";
        } else if (from % 3 == 0) { 
            cout << "Fizz";
        } else if (from % 5 == 0) {
            cout << "Buzz";
        } else {
            cout << from;
        }
        cout << endl;
    }
}

int main() {
    fizzbuzz(1, 100);
    return 0;
}
