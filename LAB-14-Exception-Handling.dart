//Exercise 1: Write a function that throws an exception and use a try-catch block to handle it.


void throwErrorFunction() {
  throw Exception('This is an exception!');
}

void main() {
  try {
    throwErrorFunction();
  } catch (e) {
    print('Exception caught: $e');
  }
}
