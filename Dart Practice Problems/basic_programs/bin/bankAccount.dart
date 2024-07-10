class BankAccount {
  String? name;
  int? accountNumber;
  double balance = 0;

  BankAccount(this.name, this.accountNumber) {
    name = name;
    accountNumber = accountNumber;
  }

  void deposit(double amount) {
    balance = balance + amount;
    print(
        "Current balance of account holder $name in acc:$accountNumber = $balance");
  }

  void withdrawal(double amount) {
    balance = balance - amount;
    print(
        "Current balance of account holder $name in acc:$accountNumber = $balance");
  }
}

void bankTransaction() {
  var jain = BankAccount('Jain', 1000123);
  var ebin = BankAccount('Ebin', 100124);
  jain.deposit(1000);
  ebin.deposit(5000);
  jain.withdrawal(100);
  ebin.withdrawal(500);
}
