// Exercise 3: Write a function that removes duplicates from a list.

List<T> removeDuplicates<T>(List<T> list) {
  Set<T> uniqueItems = {};
  List<T> result = [];

  for (T item in list) {
    if (!uniqueItems.contains(item)) {
      uniqueItems.add(item);
      result.add(item);
    }
  }

  return result;
}

void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueNumbers = removeDuplicates(numbers);
  print('List with duplicates removed: $uniqueNumbers');
}
