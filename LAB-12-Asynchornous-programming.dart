// Exercise 2: Use async and await to wait for a Future to complete.

import 'dart:async';

Future<void> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2)); // Simulating fetching data asynchronously
  print('Data fetched!');
}

void main() async {
  print('Start of main function');
  await fetchData();
  print('End of main function');
}

