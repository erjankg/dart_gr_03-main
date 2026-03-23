void main() {
  for (int i = 1; i <= 30; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print(' FizzBuzz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else if (i % 3 == 0) {
      print('fizz');
    } else {
      print('${i}');
    }
  }
print ('.........................................');
  List<int> numbers = [3, -2, 0, 7, -5, 10, 1];
  var positiveCount = 0;
  int summa = 0;

  for (int number in numbers) {
    if (number > 0) {
      positiveCount++;
    }
  }
  for (var number in numbers) {
    if (number > 0) summa += number;
  }

  print('Positive numbers count: $positiveCount');
  print('Sum of positive numbers: $summa');
  print('Average of positive numbers: ${summa / positiveCount}');


print ('.........................................');


Map<String, int> fruits = {
  'Apple': 5,
  'Banana': 2,
  'Mango': 7,
  'Orange': 0,
};
fruits.forEach((key, value) {
  
  if (value > 0)
  print (' Available: $key ($value pcs)');
});
}
