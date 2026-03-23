import 'person.dart';
import 'subject.dart';
void main()
{


Person person = Person('Erjan', 22, true);
person.introduce();

print('created ${Person.personCount} persons.');

Student student = Student( 'Imran', 18 , false, {Subject.math:5, Subject.biology: 7, Subject.chemistry: 9, Subject.english:10, Subject.physics:3}  );
student.showMarks();
student.introduce();

}
