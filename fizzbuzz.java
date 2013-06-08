/* To Run:
 * $ javac fizzbuzz.java && java fizzbuzz */

public class fizzbuzz {

    public static void main(String[] argv) {
        for (int i = 0; i <= 100; i++) {
            System.out.print(Integer.toString(i) + " ");
            if (i % 3 == 0) {
                System.out.print("Fizz");
            }
            if (i % 5 == 0) {
                System.out.print("Buzz");
            }
            System.out.print("\n");
        }
    }

}
