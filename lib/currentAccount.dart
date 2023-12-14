import 'account.dart';

class CurrentAccount extends Account {
  double? overdraftLimit;

  CurrentAccount(super.accountNumber, super.balance);

  @override
  void deposit(double amount) {
    // TODO: implement deposit
  }

  @override
  void withdraw(double amount) {
    // TODO: implement withdraw
  }
}
