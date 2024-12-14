
import 'dart:io';

void main() {
  print('Welcome to the Temperature Converter!');
  bool continueConversion = true;

  while (continueConversion) {
    print('\nChoose a conversion type:');
    print('1. Celsius to Fahrenheit');
    print('2. Fahrenheit to Celsius');
    print('3. Celsius to Kelvin');
    print('4. Kelvin to Celsius');
    print('5. Exit');

    stdout.write('Enter your choice (1-5): ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Exiting the program. Goodbye!');
      break;
    }

    double? temperature = getTemperatureInput();
    if (temperature == null) continue;

    switch (choice) {
      case '1':
        print('$temperature°C is ${celsiusToFahrenheit(temperature)}°F');
        break;
      case '2':
        print('$temperature°F is ${fahrenheitToCelsius(temperature)}°C');
        break;
      case '3':
        print('$temperature°C is ${celsiusToKelvin(temperature)}K');
        break;
      case '4':
        print('$temperature °K is ${kelvinToCelsius(temperature)}°C');
        break;
      default:
        print('Invalid choice. Please select a valid option (1-5).');
    }

    stdout.write('\nDo you want to perform another conversion? (yes/no): ');
    String? response = stdin.readLineSync()?.toLowerCase();
    continueConversion = response == 'yes';
  }
}


double? getTemperatureInput() {
  stdout.write('Enter the temperature value: ');
  String? input = stdin.readLineSync();

  try {
    return double.parse(input!);
  } catch (e) {
    print('Invalid input! Please enter a valid numeric temperature value.');
    return null;
  }
}


double celsiusToFahrenheit(double celsius) => (celsius * 9 / 5) + 32;
double fahrenheitToCelsius(double fahrenheit) => (fahrenheit - 32) * 5 / 9;
double celsiusToKelvin(double celsius) => celsius + 273.15;
double kelvinToCelsius(double kelvin) => kelvin - 273.15;
