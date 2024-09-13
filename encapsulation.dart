//ENCAPSULATION

class BankAccount {
  // Private variables for account number and balance
  int _accountNumber;
  double _balance;

  // Constructor to initialize account number and balance
  BankAccount(this._accountNumber, this._balance);

  // Getter method for balance (provides read-only access to the balance)
  double get balance => _balance;

  // Method to deposit money into the account
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount}");
    } else {
      print("Invalid deposit amount!");
    }
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrew: \$${amount}");
    } else {
      print("Insufficient funds or invalid withdrawal amount!");
    }
  }
}

void main() {
  // Create a BankAccount object with initial account number and balance
  BankAccount account = BankAccount(123456, 1000.0);

  // Display initial account balance
  print("Initial Balance: \$${account.balance}");

  // Deposit money into the account
  account.deposit(500.0);
  print("Balance after deposit: \$${account.balance}");

  // Withdraw money from the account
  account.withdraw(300.0);
  print("Balance after withdrawal: \$${account.balance}");

  // Attempt to withdraw more money than the current balance
  account.withdraw(1500.0);
}





