// Exercise 1: Given a list of integers, write a function that returns the highest number in the list.

int findHighest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List is empty'); // Throw an error if the list is empty
  }

  int highest = numbers[0]; // Assume the first number is the highest

  for (int number in numbers) {
    if (number > highest) {
      highest = number; // Update the highest number if a larger number is found
    }
  }

  return highest;
}

void main() {
  List<int> numbers = [5, 10, 15, 20, 25];
  int highestNumber = findHighest(numbers);
  print('The highest number is: $highestNumber');
}


