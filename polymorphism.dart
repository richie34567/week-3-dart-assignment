// Superclass: BankAccount
class BankAccount {
  // Private variables for account number and balance
  int _accountNumber;
  double _balance;

  // Constructor to initialize account number and balance
  BankAccount(this._accountNumber, this._balance);

  // Getter method for balance
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

  // Method to display account details (to be overridden by subclasses)
  void displayAccountDetails() {
    print("Account Number: $_accountNumber");
    print("Balance: \$$_balance");
    print("No specific account type.");
  }
}

// Subclass: SavingsAccount
class SavingsAccount extends BankAccount {
  // Private variable for interest rate
  double _interestRate;

  // Constructor to initialize account number, balance, and interest rate
  SavingsAccount(int accountNumber, double balance, this._interestRate)
      : super(accountNumber, balance);

  // Overriding the displayAccountDetails method
  @override
  void displayAccountDetails() {
    print("Savings Account Number: $_accountNumber");
    print("Balance: \$${balance}");
    print("Interest Rate: ${_interestRate * 100}%");
  }
}

// Subclass: CheckingAccount
class CheckingAccount extends BankAccount {
  // Constructor to initialize account number and balance
  CheckingAccount(int accountNumber, double balance)
      : super(accountNumber, balance);

  // Overriding the displayAccountDetails method
  @override
  void displayAccountDetails() {
    print("Checking Account Number: $_accountNumber");
    print("Balance: \$${balance}");
    print("This is a Checking Account with no interest.");
  }
}
void main() {
  // Create instances of different types of accounts
  BankAccount regularAccount = BankAccount(123456, 1500.0);
  SavingsAccount savingsAccount = SavingsAccount(987654, 2000.0, 0.05);
  CheckingAccount checkingAccount = CheckingAccount(555555, 1000.0);

  // Display account details and interest for each account
  regularAccount.displayAccountDetails();
  savingsAccount.displayAccountDetails();
  checkingAccount.displayAccountDetails();
}
