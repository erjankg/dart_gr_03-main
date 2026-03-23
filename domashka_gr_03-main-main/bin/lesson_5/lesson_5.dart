import 'car.dart';
import 'person.dart';

void main() {
  int number = 10;
  Car myCar = Car("Toyota", 2020, "Red");
  print("Number: $number");
  print(myCar);
  myCar.displayInfo();

  // Car -> сложный тип данных
  // friendsCar - ссылка на объект типа Car
  // Car("BMW", 2018, "Blue") -> вызывает конструктор, который создаёт объект
  Car friendsCar = Car("BMW", 2018, "Blue");
  friendsCar.displayInfo();
  myCar.drive();
  friendsCar.drive();
  // myCar.color = "Green";
  myCar.repaint("Green");
  myCar.displayInfo();
  friendsCar.honk(2);

  Car bestCar = Car.redHonda(2021);
  bestCar.displayInfo();

  Person friend = Person(25, "Alice");
  friend.age = 26;
  friend.introduceYourself();

  Car coolCar = Car.withOwner("Lexus", 2025, "White", friend);
  coolCar.displayInfo();
  Car racingCar = Car.withOwner("Lamborgini", 2025, "Black", friend);
  racingCar.displayInfo();

  // Person me = Person(22, 'Bob');
  //         a = b
  bestCar.owner = Person(22, 'Bob');
  bestCar.displayInfo();
  print('End of lesson 5');
}
