// Exercise 1: Write a function that takes a list of numbers and returns the average

double calculateAverage(List<num> numbers) {
  if (numbers.isEmpty) {
    return 0.0; // Return 0 if the list is empty to avoid division by zero
  }

  num sum = 0;
  for (var number in numbers) {
    sum += number;
  }

  return sum / numbers.length;
}

void main() {
  List<num> numbers = [5, 10, 15, 20, 25];
  double average = calculateAverage(numbers);
  print('The average is: $average');
}
