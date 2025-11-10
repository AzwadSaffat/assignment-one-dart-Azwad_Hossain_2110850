// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
// TODO: Complete the following requirements:

// 1. Create variables of different data types: String, int, double, bool
// TODO: Add your variables here
String name = "Azwad H0ssain"; // TODO: Initialize with your name
int age = 23; // TODO: Initialize with your age
double height = 5.8; // TODO: Initialize with your height
bool isStudent = true; // TODO: Initialize with true or false

// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double
// TODO: Implement the calculateBMI function
double calculateBMI(double weightKg, double heightMeters) {
  
  return weightKg / (heightMeters * heightMeters);
}



// 3. Write a function called getGrade that takes a score (int) and returns a grade (String) based on:
//    - 90-100: A
//    - 80-89: B
//    - 70-79: C
//    - 60-69: D
//    - Below 60: F
// TODO: Implement the getGrade function
String getGrade(int score) {
  if (score >= 90) return "A";
  else if (score >= 80) return "B";
  else if (score >= 70) return "C";
  else if (score >= 60) return "D";
  else return "F";
}


void main() {
  name = "Azwad Hossain";
  age = 23;
  height = 5.8;
  isStudent = true;
  
  double bmi = calculateBMI(70.0, 1.75); 

  String grade = getGrade(85); 
  
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: ${bmi.toStringAsFixed(2)}"); 
  print("Grade: $grade");
}
