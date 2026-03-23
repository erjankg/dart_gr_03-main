import 'dart:io';

void main() {
  print('How old are you?');
  var age = int.parse(stdin.readLineSync()!);

  print(' What is tepmperature outside?');
  var temperature = int.parse(stdin.readLineSync()!);
  if (age > 20 && age < 45 && temperature > -20 && temperature < 30) {
    print('U can go for a walk');
  } else if (age < 20 && temperature > 0 && temperature < 28) {
    print('U can go for a walk');
  } else if (age > 45 && temperature > -10 && temperature < 25) {
    print('U can go for a walk');
  } else {
    print('stay home');
  }

  print(' What is day today?');
  var day = stdin.readLineSync()!.toLowerCase();

  switch (day) {
    case 'monday':
    case '1':
      print('Today is start of the week');
      break;
    case 'tuesday':
    case '2':
    case 'wednesday':
    case '3':
    case 'thursday':
    case '4':
      print('Keep going, almost weekend');
      break;
    case 'friday':
    case '5':
      print(' Weekend is coming');
      break;
    case 'saturday':
    case '6':
    case 'sunday':
    case '7':
      print(' Enjoy your weekend');
      break;
    default:
      print(' Invalid day');
  }

  print(' Enter password:');
  var password = stdin.readLineSync()!;
  if (password.isEmpty) {
    print(' Password cannot be empty');
  } else {
    if (password.length < 6) {
      print('password is too short');
    } else {
      if (password.length >= 6 && password == 'dart123') {
        print('Access granted');
      } else {
        print('Wrong password');
      }
    }
  }
}
