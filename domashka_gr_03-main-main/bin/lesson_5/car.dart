import 'person.dart';

class Car {
  // Свойства, атрибуты, поля
  String model;
  int year;
  String color;
  Person? owner;

  // Конструктор
  // Car(String theModel, int theYear, String theColor) {
  //   model = theModel;
  //   year = theYear;
  //   color = theColor;
  // }

  // Car(String model, int year, String color) {
  //   this.model = model;
  //   this.year = year;
  //   this.color = color;
  // }

  // Конструктор с инициализирующим списком
  // Car(String model, int year, String color)
  //   : this.model = model,
  //     this.year = year,
  //     this.color = color;

  // Сокращённый конструктор
  Car(this.model, this.year, this.color);

  // Именованный конструктор
  Car.redHonda(this.year) : model = "Honda", color = "Red";
  Car.withOwner(this.model, this.year, this.color, this.owner);

  // Метод
  void drive() {
    print("The car $model is driving");
  }

  void repaint(String newColor) {
    color = newColor;
    print("The car $model has been repainted to $color");
  }

  void honk(int numberOfTimes) {
    for (int i = 0; i < numberOfTimes; i++) {
      print("Beep!");
    }
  }

  void displayInfo() {
    print(
      'Model: $model, Year: $year, Color: $color Owner Info: ${owner == null ? 'No owner' : owner!.name}',
    );
  }
}
