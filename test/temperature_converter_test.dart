
import 'package:test/test.dart';
import 'package:temperature_converter/temperature_converter.dart'; 

void main() {
  group('Temperature Conversion Tests', () {
    test('Celsius to Fahrenheit Conversion', () {
      expect(celsiusToFahrenheit(0), 32.0); 
      expect(celsiusToFahrenheit(100), 212.0); 
      expect(celsiusToFahrenheit(-40), -40.0); 
    });

    test('Fahrenheit to Celsius Conversion', () {
      expect(fahrenheitToCelsius(32), 0.0); 
      expect(fahrenheitToCelsius(212), 100.0); 
      expect(fahrenheitToCelsius(-40), -40.0); 
    });

    test('Celsius to Kelvin Conversion', () {
      expect(celsiusToKelvin(0), 273.15); 
      expect(celsiusToKelvin(100), 373.15);
      expect(celsiusToKelvin(-273.15), 0.0); 
    });



  });
}
