class InvalidPhoneNumberException implements Exception {
  //start
}

bool? validatePhoneNumber(String phoneNumber) {
  if (phoneNumber.length == 10) {
    return true;
  } else {
    InvalidPhoneNumberException();
    return false;
  }
}

void main(List<String> arguments) {
  try {
    final phoneValid = validatePhoneNumber('656');
  } on InvalidPhoneNumberException catch (_) {
    print("Invalid Phone number");
  } catch (e) {
    print(e);
  }
}
