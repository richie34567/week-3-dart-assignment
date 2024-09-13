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

// Subclass that inherits from BankAccount
class SavingsAccount extends BankAccount {
  // Private variable for interest rate
  double _interestRate;

  // Constructor to initialize account number, balance, and interest rate
  SavingsAccount(int accountNumber, double balance, this._interestRate)
      : super(accountNumber, balance);

  // Getter method for interest rate
  double get interestRate => _interestRate;

  // Method to add interest to the balance
  void addInterest() {
    double interest = balance * _interestRate;
    deposit(interest);
    print("Interest added: \$${interest}");
  }
}

void main() {
  // Create a SavingsAccount object with initial account number, balance, and interest rate
  SavingsAccount savingsAccount = SavingsAccount(123456, 1000.0, 0.05);

  // Display initial account balance and interest rate
  print("Initial Balance: \$${savingsAccount.balance}");
  print("Interest Rate: ${savingsAccount.interestRate * 100}%");

  // Deposit money into the account
  savingsAccount.deposit(500.0);
  print("Balance after deposit: \$${savingsAccount.balance}");

  // Withdraw money from the account
  savingsAccount.withdraw(300.0);
  print("Balance after withdrawal: \$${savingsAccount.balance}");

  // Add interest to the account balance
  savingsAccount.addInterest();
  print("Balance after adding interest: \$${savingsAccount.balance}");
}