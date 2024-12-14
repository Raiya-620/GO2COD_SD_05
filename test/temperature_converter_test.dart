
import 'package:test/test.dart';
import '../lib/temperature_converter.dart'; // Adjust this path as needed

void main() {
  group('Temperature Conversion Tests', () {
    test('Celsius to Fahrenheit Conversion', () {
      expect(celsiusToFahrenheit(0), 32.0); // Freezing point
      expect(celsiusToFahrenheit(100), 212.0); // Boiling point
      expect(celsiusToFahrenheit(-40), -40.0); // Special case
    });

    test('Fahrenheit to Celsius Conversion', () {
      expect(fahrenheitToCelsius(32), 0.0); // Freezing point
      expect(fahrenheitToCelsius(212), 100.0); // Boiling point
      expect(fahrenheitToCelsius(-40), -40.0); // Special case
    });

    test('Celsius to Kelvin Conversion', () {
      expect(celsiusToKelvin(0), 273.15); // Freezing point
      expect(celsiusToKelvin(100), 373.15); // Boiling point
      expect(celsiusToKelvin(-273.15), 0.0); // Absolute zero
    });



  });
}
