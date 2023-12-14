import 'account.dart';

class SavingsAccount extends Account {
  double? intersRate;
  SavingsAccount(int accountNumber, double balance, double intersRate)
      : super(accountNumber, balance);
  @override
  void deposit(double amount) {
    // TODO: implement deposit
  }

  @override
  void withdraw(double amount) {
    // TODO: implement withdraw
  }
}
