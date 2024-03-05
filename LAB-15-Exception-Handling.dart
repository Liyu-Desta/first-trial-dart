// Exercise 2: Use a try-catch block to catch a specific type of exception.

void throwErrorFunction() {
  throw FormatException('Invalid format!');
}

void main() {
  try {
    throwErrorFunction();
  } on FormatException catch (e) {
    print('FormatException caught: $e');
  } catch (e) {
    print('Generic exception caught: $e');
  }
}
