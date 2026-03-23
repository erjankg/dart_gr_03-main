import 'dart:io';

void main() {
int warm = 0;
int cool = 0;
int cold = 0;
for (int day = 1; day <= 7; day++) {
print('Enter temperature for day $day:');
int temperature = int.parse(stdin.readLineSync()!);
if (temperature > 20) {
 warm++;
print("It's warm today!");
} else if (temperature >= 10 && temperature <= 20) {
cool++;
print("It's cool today!");
} else {
cold++;
 print("It's cold today!");
}}
 print("Warm days: $warm");
 print("Cool days: $cool");
 print("Cold days: $cold");
}
