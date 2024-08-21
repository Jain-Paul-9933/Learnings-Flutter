class Solution {
  int reverse(int x) {
    String number = x.toString();
    String revNumber = "";
    if (number[0] == "-") {
      revNumber = revNumber + "-";
      number = number.replaceAll("-", "");
    }
    for (int i = number.length - 1; i >= 0; i--) {
      revNumber = revNumber + number[i];
    }
    int reverseNumber = int.parse(revNumber);
    if (reverseNumber >= -2147483647 && reverseNumber <= 2147483648) {
      return int.parse(revNumber);
    } else {
      return 0;
    }
  }
}
