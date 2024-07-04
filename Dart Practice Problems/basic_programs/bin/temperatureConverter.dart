import 'dart:io';

void temperatureConverter() {
  print("Please enter the value to get converted");
  double temperature = double.parse(stdin.readLineSync()!);

  print(
      "Please select the option \n 1) Celsius to Fahrenheit \n 2) Fahrenheit to Celsius");
  int option = int.parse(stdin.readLineSync()!);

  if (option == 1) {
    double temperatureInFahrenheit = ((temperature * 9) / 5) + 32;
    print(
        "$temperature Celsius is equal to $temperatureInFahrenheit Fahrenheit");
  } else if (option == 2) {
    double temperatureInCelsius = ((temperature - 32) * 5) / 9;
    print("$temperature Fahrenheit is equal to $temperatureInCelsius Celsius");
  } else {
    print("Invalid choice");
  }
}
