// Exercise 2: Write a function that takes a Map and prints all its keys and values.

void printMap(Map<dynamic, dynamic> map) {
  map.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}

void main() {
  Map<dynamic, dynamic> myMap = {
    'apple': 'red',
    'banana': 'yellow',
    'grape': 'purple'
  };

  printMap(myMap);
}
