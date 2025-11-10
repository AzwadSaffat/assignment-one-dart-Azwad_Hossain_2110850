// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐

class BankAccount {
  // Properties
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType; // Savings/Checking

  // Constructor: initialize properties, balance starts at 0.0
  BankAccount(this.accountNumber, this.accountHolder, this.accountType) : balance = 0.0;

  // Deposit method
  void deposit(double amount) {
    balance += amount;
    print("$accountHolder deposited \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
  }

  // Withdraw method
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("$accountHolder withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds for $accountHolder. Current balance: \$${balance.toStringAsFixed(2)}");
    }
  }

  // Get balance
  double getBalance() {
    return balance;
  }

  // Display account info
  void displayAccountInfo() {
    print("Account Number: $accountNumber");
    print("Account Holder: $accountHolder");
    print("Account Type: $accountType");
    print("Balance: \$${balance.toStringAsFixed(2)}");
    print("---------------------------");
  }
}

void main() {
  // Create 3 bank accounts
  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount account3 = BankAccount("11111", "Charlie", "Savings");

  // Depositing money
  account1.deposit(1000.0);
  account2.deposit(500.0);
  account3.deposit(2000.0);

  // Withdrawing money
  account1.withdraw(200.0);
  account2.withdraw(100.0);

  // Display account information
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  // Demonstrate insufficient funds
  account2.withdraw(1000.0); // Should print insufficient funds
}
