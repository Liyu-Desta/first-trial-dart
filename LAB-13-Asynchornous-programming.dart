//Exercise 3: Use the Future.then method to handle the result of a Future

Future<int> fetchNumber() {
  return Future.delayed(Duration(seconds: 2), () => 42); // Simulating fetching a number asynchronously after 2 seconds
}

void main() {
  print('Fetching number...');
  fetchNumber().then((value) {
    print('Number fetched: $value');
  }).catchError((error) {
    print('Error occurred: $error');
  });
}
