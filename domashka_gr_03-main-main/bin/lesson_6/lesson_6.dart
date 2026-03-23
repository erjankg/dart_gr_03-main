import 'animals.dart';
import 'utilities.dart';

void main() {
  Cat cat = Cat(Color.black, 2);
  print(cat.info());
  cat.meow();

  Parrot parrot = Parrot(Color.red, 3);
  print(parrot.info());
  parrot.fly();

  Dog dog = Dog('Buldog', Color.brown, 1);
  print(dog.info());
  dog.bark();

  FightingDog fightingDog = FightingDog(10, 'Pitbull', Color.white, 5);
  print(fightingDog.info());
  fightingDog.bark();
  fightingDog.fight();
  print('Fighting dog won ${fightingDog.wins} times.');
  Animal.showAnimalsCount();
  Animal.resetCount();

  print('25 Celcius = ${Converter.celsiusToFahrenheit(25)} Fahrenheits');
  print(Calculator.subtract(80, 5));

  if (fightingDog.breed == 'Pitbull') {
    print('This dog is dangerous');
  }
  if (fightingDog.color == Color.white) {
    print('This dog is beautiful');
  }
  print('End of program');
}
