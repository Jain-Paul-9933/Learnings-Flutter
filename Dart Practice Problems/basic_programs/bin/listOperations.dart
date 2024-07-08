import 'dart:math';

void listOperations() {
  List<int> numbers = [10, 5, 20, 15, 8];

  // Accessing elements by index
  print("First element: ${numbers[0]}"); // Accesses the element at index 0 (10)
  print("Last element: ${numbers[numbers.length - 1]}"); // Accesses the last element

  // Adding elements
  numbers.add(3); // Adds 3 to the end of the list

  // Removing elements
  numbers.remove(5); // Removes the first occurrence of 5

  // Finding maximum and minimum values
  int maxNumber = numbers.reduce(max); // Finds the maximum value using reduce and max
  int minNumber = numbers.reduce(min); // Finds the minimum value using reduce and min

  // Checking if a specific element exists
  bool containsFifteen = numbers.contains(15); // Checks if the list contains 15

  // Print the modified list and results
  print("Modified list: $numbers");
  print("Maximum number: $maxNumber");
  print("Minimum number: $minNumber");
  print("Contains 15: $containsFifteen");
}
