abstract class Account {
  int? accountNumber;
  double? balance;
  Account(this.accountNumber, this.balance);
  void deposit(double amount);
  void withdraw(double amount);
}
