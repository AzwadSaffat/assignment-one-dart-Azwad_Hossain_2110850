// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐


mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Processing payment of \$${amount.toStringAsFixed(2)}");
  }
}


mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}



abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: \$${getBaseSalary().toStringAsFixed(2)}");
  }
}




class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);

  @override
  String getJobTitle() => "Manager";

  @override
  double getBaseSalary() => 8000.0;

  @override
  void displayInfo() {
    super.displayInfo();
    print("Team Size: $teamSize");
  }
}


class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);

  @override
String getJobTitle() => "Senior Developer";


 @override
double getBaseSalary() => 6000.0;


  @override
  void displayInfo() {
    super.displayInfo();
    print("Programming Language: $programmingLanguage");
  }
}


void main() {
  
  Manager manager1 = Manager("Alice", "M001", "Sales", 5);
  Developer dev1 = Developer("Bob", "D001", "IT", "Dart");
  Developer dev2 = Developer("Charlie", "D002", "IT", "Flutter");

  
  double managerSalary = manager1.calculateSalary(manager1.getBaseSalary(), 1000.0);
  double dev1Salary = dev1.calculateSalary(dev1.getBaseSalary(), 500.0);
  double dev2Salary = dev2.calculateSalary(dev2.getBaseSalary(), 700.0);

  
  manager1.processPayment(managerSalary);
  dev1.processPayment(dev1Salary);
  dev2.processPayment(dev2Salary);

  print("\n--- Employee Information ---\n");

 
  manager1.displayInfo();
  print(manager1.generateReport(manager1.name, manager1.department));
  print("");

  dev1.displayInfo();
  print("");
  dev2.displayInfo();
  print("");
}
