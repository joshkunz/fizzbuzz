/* Language: JavaScript (https://developer.mozilla.org/en-US/docs/Web/JavaScript)
 * To Run:
 * $ node fizzbuzz.js */

for (i = 0; i < 101; i++) {
    out = ""
    if (i % 3 == 0) { out += "Fizz"; }
    if (i % 5 == 0) { out += "Buzz"; }
    if (out) { console.log(out); }
    else { console.log(i); }
}
