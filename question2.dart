

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];
  
  // 2. Create a Map<String, int> to store student scores
  Map<String, int> studentScores = {};
  
  // 3. Assign random scores (60-100) to each student
  Random random = Random();
  for (String student in studentNames) {
    int score = 60 + random.nextInt(41); // random number from 60 to 100
    studentScores[student] = score;
  }
  
  // 4. Find highest, lowest, and average scores
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  int totalScore = 0;

  for (String student in studentNames) {
    int score = studentScores[student]!;
    totalScore += score;
    
    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }
    
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
  }

  double averageScore = totalScore / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(2)}");
  
  // 5. Categorize students using switch statement
  for (String student in studentNames) {
    int score = studentScores[student]!;
    String category = "";

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    
    print("$student: $score ($category)");
  }
}
