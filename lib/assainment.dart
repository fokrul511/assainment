void main() {}

void displayRole() {}

class Person {
  String? name;
  int? age;
  String? address;
  Person({
    this.name,
    this.age,
    this.address,
  });
  void role() {}
}

class Student extends Person {
  void displayRole() {
    print('Role: Student');
    print(grade);
  }

  int? studentID;
  double? grade;
  List? courseScore;
  Student({
    this.studentID,
    this.grade,
    this.courseScore,
  });
}

class Teacher extends Person {
  int? teacherID;
  List courseTaught = [];
  displayRole() {
    print('Role:teacher');
  }
}

class StudentManagementSystem {}
