import 'dart:io';

void main() {
  int x = 26;
  int y = 78;

  print(' икс больше игрека: {x > y}');
  print('икс больше или равно игрека: {x >= y}');
  print(' x меньше игрека: {x < y} ');
  print('x меньше или равно игрека: {x <= y}');

  var temperature = 0;
  var isSnowy = true;

  if (temperature <= 0) {
    print(" we go to ice skating");
  }
  if (isSnowy) {
    print('we go  walking in the snow');
  }

  if (temperature > 0 && temperature <= 15) {
    print(' we go home');
  } else if (temperature > 50) {
    print('we go home');
  } else if (temperature > 100) {
    print('omg what the hell');
  } else {
    print('stay home and code dart');
  }

  String ageString = '22';
  int age = int.parse(ageString);
  print(age);
  print(String);
  print(age);

  age = 15;
  var age2 = 26;

  if (age >= 10) {
    print('drink tea');
  }
  if (age2 < 20) {
    print('drink tea');
  } else {
    print('drink wine');
  }

  double height = 1.75;
  String heightString = height.toString();
  print('Height as string: ${heightString}cm');

  //ввод информации из консоли
  print ('Enter number 1:');
var num1 = int.parse(stdin.readLineSync()!);
print ('Enter number 2:');
var num2 = int.parse(stdin.readLineSync()!);
print (num2+num1);
  print('numer pls');
  print('vvedi chislo ot 0 do 3');
  var number1 = int.parse(stdin.readLineSync()!);

  switch (number1) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
    default:
      print('ty che durak');
  }
 print ('Enter number:');
 var n = int.parse(stdin.readLineSync()!);
 for ( int i = 1; i <= n; i++) {
   if (i % 2 == 0) {
     print ('$i is even number');
   } else {
     print ('$i is odd number');

    
   }}
 
}