class Converter {
  static double celsiusToFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  static double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }
}

class Calculator {
  static int add(int a, int b) {
    return a + b;
  }

  static int subtract(int a, int b) {
    return a - b;
  }
}
