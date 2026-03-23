import 'Studen.dart';
import 'Person.dart';
void main(){
Person erjan = Person('Erjan', 22, false);
erjan.introduce();
Student aylin =Student('Aylin', 22, false, {Subject.math: 10, Subject.physics: 7, Subject.english: 9, Subject.history: 6},);
aylin.marks;
aylin.introduce();
Student amir = Student('Amir', 23, true, {Subject.english: 6, Subject.history: 8, Subject.math :10, Subject.physics: 1,});
amir.introduce();



 
}