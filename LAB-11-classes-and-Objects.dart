// Exercise 3: Create a class ElectricCar that inherits from Car and has an additional property batteryLife.

class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void makeSound() {
    print('Vroom Vroom');
  }
}

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife) : super(brand, model, year);
}

void main() {
  ElectricCar myElectricCar = ElectricCar('Tesla', 'Model S', 2023, 300);
  print('My electric car details:');
  print('Brand: ${myElectricCar.brand}');
  print('Model: ${myElectricCar.model}');
  print('Year: ${myElectricCar.year}');
  print('Battery Life: ${myElectricCar.batteryLife} miles');

  // Call the makeSound method inherited from Car class
  myElectricCar.makeSound();
}
