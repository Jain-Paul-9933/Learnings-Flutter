import 'dart:io';

void studentMarks() {
  print("Enter the mark got for english");
  int englishMark = int.parse(stdin.readLineSync()!);
  print("Enter the mark got for physics");
  int physicsMark = int.parse(stdin.readLineSync()!);
  print("Enter the mark got for chemistry");
  int chemistryMark = int.parse(stdin.readLineSync()!);
  print("Enter the mark got for biology");
  int biologyMark = int.parse(stdin.readLineSync()!);
  print("Enter the mark got for maths");
  int mathsMark = int.parse(stdin.readLineSync()!);
  print("Enter the mark got for computer");
  int computerMark = int.parse(stdin.readLineSync()!);

  int totalMarks = englishMark +
      physicsMark +
      chemistryMark +
      biologyMark +
      mathsMark +
      computerMark;

  double averageMark = totalMarks / 6;

  double perctangeObtained = (totalMarks / 600) * 100;

  print("Total mark of the student is $totalMarks");
  print("Average mark of the student is $averageMark");

  if (perctangeObtained >= 90) {
    print("Grade obtained by student is A");
  }
   else if (perctangeObtained >= 80) {
    print("Grade obtained by student is B");
  }
   else if (perctangeObtained >= 70) {
    print("Grade obtained by student is C");
  }
   else if (perctangeObtained >= 60) {
    print("Grade obtained by student is D");
  }
   else if (perctangeObtained >= 50) {
    print("Grade obtained by student is E");
  }
   else if (perctangeObtained >= 40) {
    print("Grade obtained by student is F");
  }
   else {
    print("Student is Failed");
  }
}
