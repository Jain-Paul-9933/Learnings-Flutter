class Solution {
  bool isPalindrome(int x) {
    String number = x.toString();
    for(int i=0, j=number.length-1;i<j;i++,j--){
        if(number[i]!=number[j]){
            return false;
        }
    }
    return true;
  }
}