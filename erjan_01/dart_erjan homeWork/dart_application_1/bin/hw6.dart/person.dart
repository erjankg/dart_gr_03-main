class Person {
  String fullName;
  int age;
  bool isMarried;

  Person(this.fullName, this.age, this.isMarried);

  void introduce() {
    String marriedText = isMarried ? 'Yes' : 'No';
    print('Hi! My name is $fullName. I am $age years old. Married: $marriedText.');
  }
}