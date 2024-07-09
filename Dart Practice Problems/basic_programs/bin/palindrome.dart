import 'dart:io';

void isPalindrome() {
  bool isPalindrome = true;
  print("Enter a string");
  String string = stdin.readLineSync()!.toLowerCase();
  for (int left = 0, right = string.length-1; left < right; left++, right--) {
    if (string[left] != string[right]) {
      isPalindrome = false;
    }
  }
  if (isPalindrome == true) {
    print("$string is a palindrome");
  } else {
    print("$string is not palindrome");
  }
}
