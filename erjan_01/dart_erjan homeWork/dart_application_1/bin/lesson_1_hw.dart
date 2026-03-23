

void main () {
String myName = 'Erjan';
int myAge = 22;
int iWasBorn = 2026 - myAge;
double myHeight = 1.75;
String myJobe = 'Student';
String myCity = 'Bishkek';
String myHobby = 'Video games';
print ("I was born in $iWasBorn");
print ("My name is $myName");
print ("I am $myAge years old");
print ("My height is $myHeight meters");
print ("I study in GeeksAcademy as a $myJobe in the city of $myCity");
print ("My hobby is $myHobby");


int salary = 750;
int salaryForYear = salary * 12;
print ("${salaryForYear}USD");
double bonusSalary = salaryForYear*1.10;
print ("My  yearly  salary is ${salaryForYear}USD and with bonus ${bonusSalary}USD");


String sampleText = " Knowledge is power, but practice makes perfect. ";
print(sampleText.trim()); // удаляет пробелы в начале и в конце строки
print(sampleText.toUpperCase()); // преобразует строку в верхний регистр
print(sampleText.replaceAll("practice", "expirience"));
print(sampleText.contains("power")); // проверяет, содержит ли строка подстроку "power"

int apples = 12;
int people = 5;
int applesPerPerson = apples ~/ people;
int leftApples = apples % people;
print("Each person gets $applesPerPerson apples.");
print ("Left apples: $leftApples.");


var city = "Bishkek";
final country = "Kyrgyzstan";
city = "Osh";
//country = "China"; нельзя изменить значение final переменной
print ("City: $city, Country: $country");
print ("City: $city, Country: $country");
print ("City: $city, Country: $country");
print ("City: $city, Country: $country");

}