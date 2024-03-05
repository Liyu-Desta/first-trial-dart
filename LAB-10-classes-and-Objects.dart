// Exercise 2: Add a method to the Car class that prints “Vroom Vroom”.

class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void makeSound() {
    print('Vroom Vroom');
  }
}

void main() {
  Car myCar = Car('Toyota', 'Camry', 2022);
  print('My car details:');
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');

  // Call the makeSound method
  myCar.makeSound();
}
