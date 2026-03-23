import 'person.dart';
enum Subject { math, physics, english, history }

class Student extends Person {
  Map<Subject, double> marks;

  Student(String fullName, int age, bool isMarried, this.marks)
      : super(fullName, age, isMarried);
      
      
void showInfo(){print('Student $fullName $age years old $isMarried $marks.');
}
  void showMarks() {
    print('Student: $fullName');
    for (var entry in marks.entries) {
      print('${entry.key.name}: ${entry.value}');
    }
  }

  double calculateAverage() {
    if (marks.isEmpty) return 0.0;

    double total = 0;
    for (var entry in marks.entries) {
      total += entry.value;
    }
    return total / marks.length;
  }

  @override
  void introduce() {
    super.introduce();
    showMarks();
    print('Average mark: ${calculateAverage()}');
  }
}
