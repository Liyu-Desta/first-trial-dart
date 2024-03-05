// Exercise 2: Write a program that uses a for loop to print the first 10 numbers in the Fibonacci sequence.

void main() {
  int n = 10; // Number of Fibonacci numbers to print
  int first = 0;
  int second = 1;

  print("First $n numbers in the Fibonacci sequence:");

  for (int i = 0; i < n; i++) {
    if (i <= 1) {
      print(i);
    } else {
      int next = first + second;
      print(next);
      first = second;
      second = next;
    }
  }
}
