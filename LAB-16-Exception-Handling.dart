// Exercise 3: Use a finally block to ensure that some code runs no matter what.

void main() {
  try {
    int result = 10 ~/ 0; // Attempting to divide by zero to trigger an exception
    print('Result: $result');
  } catch (e) {
    print('Exception caught: $e');
  } finally {
    print('Finally block executed');
  }
}


