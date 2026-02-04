void main() {
  // DRY - Don't Repeat Yourself

  print(globalVariable);
  print('ЗАВТРАК');
  makeTea();

  print('ОБЕД');
  makeTea();

  print('УЖИН');
  makeTea();

  addition(5, 10, 'Сумма первых двух чисел');
  addition(50, 2, 'Сумма чисел');
  calculatePerimeter('Аудитория 2', 5.0, 4.0);
  calculatePerimeter('Холл', 10, 6.5);
  calculatePerimeter('Кухня', 3, 4.5);

  int areaOfAuditory2 = calculateArea(5, 4);
  print('Площадь аудитории 2: $areaOfAuditory2 м²');
  int areaOfHall = calculateArea(10, 6.5);
  print('Площадь холла: $areaOfHall м²');
  int areaOfKitchen = calculateArea(3, 4.5);
  print('Площадь кухни: $areaOfKitchen м²');
  print(
    'Общая площадь помещений: ${areaOfAuditory2 + areaOfHall + areaOfKitchen} м²',
  );

  double cost1 = shippingCost(2.5, city: 'Бишкек');
  print('Стоимость доставки в Бишкек: $cost1 сом');
  double cost2 = shippingCost(3.0, city: 'Ош');
  print('Стоимость доставки в Ош: $cost2 сом');
  double cost3 = shippingCost(1.5, city: 'Нарын', baseCost: 120.0);
}

void testFunction() {
  // функция без параметров и без возвращаемого значения
  print('Это тестовая функция');
}

double shippingCost(
  double weight, {
  required String city,
  double baseCost = 100.0,
}) {
  // var factor = 1.0;
  // if (city != 'Бишкек') {
  //   factor = 1.5;
  // }
  var factor = city == 'Бишкек' ? 1.0 : 1.5;
  return baseCost * weight * factor;
}

int calculateArea(double length, double width) {
  // возвращаемая функция с параметрами
  return (length * width).round();
}

void calculatePerimeter(String room, double length, double width) {
  // невозвращаемая функция с параметрами
  double perimeter = 2 * (length + width);
  print('Периметр комнаты $room: $perimeter м');
}

void addition(int num1, int num2, String phrase) {
  // невозвращаемая функция с параметрами
  print('$phrase: ${num1 + num2}');
}

void makeTea() {
  // невозвращаемая функция без параметров
  print('Вскипятить воду');
  print('Насыпать заварку');
  print('Залить кипятком');
  print('Дать настояться');
  print('Налить в чашку');
  print('Добавить молоко или сахар по-вкусу');
  testFunction();
}

String globalVariable = 'Я глобальная переменная';
void scopeExample(int paramVariable) {
  print(globalVariable);
  print(paramVariable);
  // print(localVariable); // Ошибка! Переменная не видна в этой области видимости
  var localVariable = 'Я локальная переменная';
  print(localVariable);
  if (paramVariable > 0) {
    print(
      localVariable,
    ); // Локальная переменная видна внутри вложенных областей видимости
    int ifBlockVariable = 42;
    print(ifBlockVariable);
  }
  // print(ifBlockVariable); // Ошибка! Переменная не видна вне блока if
}
