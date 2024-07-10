import 'dart:io';

void inrToUSDConverter() {
  print("Enter the amount");
  double amount = double.parse(stdin.readLineSync()!);
  print("Please select Conversion \n1)INR - USD \n2)USD - INR");
  int choice = int.parse(stdin.readLineSync()!);
  double? convertedAmount;
  switch (choice) {
    case 1:
      convertedAmount = amount / 85;
      break;
    case 2:
      convertedAmount = amount * 85;
    default:
      print("Enter a valid conversion option");
  }
  if (convertedAmount!=null) {
    print("Currency converted amount = $convertedAmount");
  }
}
