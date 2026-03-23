import 'subject.dart';

class Person {
  static int personCount = 0;
  String name;
  int age;
  bool isMarried;
  
  Person(this.name, this.age, this.isMarried)
  {
    personCount++;
    }
  void introduce() {
    
    

    print(
      " Hi, My name is $name. I am $age years old. I am ${isMarried ? "married" : "single"}. "
    );
    personCount++;
  }
}

class Student extends Person {
  double average = 0;
  double sum = 0;
  Map<Subject, double> marks;
  Student(super.name, super.age, super.isMarried, this.marks);
  void showMarks() {

    for (var entry in marks.entries) {
      print('${entry.key.name}: ${entry.value}');

      sum = sum + entry.value;
      
    }
    average = sum / marks.length;

    print('Average marks is $average');
  

}
  @override
void introduce() {
    print(" Hi, My name is $name. I am $age years old. I am ${isMarried ? "married" : "single"}. Average mark: $average ");
  
  }
}
