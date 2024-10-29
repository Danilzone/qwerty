class BankAccount {
  int number;
  double balance;
  String name;

  BankAccount(this.number, this.balance, this.name);

  void replenishment(double sum) => balance += sum;

  void withdraw(double sum) {
    // проверка на недостаток средств
    if (balance < sum) {
      print("Недостаточно средств");
    } else {
      balance -= sum;
    }
  }

  void checkBalance() => print(balance);
}

void main() {
  BankAccount bankAccount = BankAccount(100, 1000, "Иван");
  bankAccount.checkBalance();
  bankAccount.replenishment(500);
  bankAccount.checkBalance();
  bankAccount.withdraw(1000);
  bankAccount.checkBalance();
}
