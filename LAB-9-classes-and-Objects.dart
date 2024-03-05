// Exercise 1: Create a class Car with properties like brand, model, and year. Instantiate this class and print the properties.

class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);
}

void main() {
  Car myCar = Car('Toyota', 'Camry', 2022);
  print('My car details:');
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');
}
