//
//
//? create abstract method......

abstract class Role {
  void displayRole();
}

//? create a class Person.....
class Person implements Role {
  // implement role class...
  String name;
  int age;
  String address;
  Role role;
  Person(this.name, this.age, this.address,
      this.role); //! create Person Constructor......
//
  @override
  void displayRole() {
    role.displayRole(); //?call role to displayRole method.......
  }

  String getName() {
    // create get name method...
    return name;
  }

  int getAge() {
    //create get age method...
    return age;
  }

  String getAddress() {
    // create get address method...
    return address;
  }
}

//* Create a class Student that extends Person
class Student extends Person {
  String studentId;
  String grade;
  List<double> courseScores = [];
  Student(String name, int age, String address, this.studentId, this.grade)
      : super(name, age, address, StudentRole());
  // Override the displayRole() method
  @override
  void displayRole() {
    // print("Student Information:");
    super.displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Role: Student");
    print("Average Score: ${calculateAverageScore()}");
    print("");
  }

  // Implement a method to calculate the average score of courses
  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}

// ?Create another class Teacher that extends Person
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught = [];

  Teacher(
      String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address, TeacherRole());

  // Override the displayRole() method
  @override
  void displayRole() {
    // print("Teacher Information:");
    super.displayRole();
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Role: Teacher");
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
    print("");
  }
}

class StudentRole implements Role {
  @override
  void displayRole() {
    print("Role: Student");
  }
}

// Implement the Role interface for Teacher
class TeacherRole implements Role {
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

void main() {
  // In the main method, create instances of Student and Teacher classes
  var student = Student("Fokrul Islam", 20, "Moulvibazar 3224", "S123", "A")
    ..courseScores = [90, 91, 100];
  student.displayRole(); // Display student information

  var teacher = Teacher("Al mahfuj", 21, "Sylhet", "T456",
      ["Database", "environmental", "web mastering"]);
  teacher.displayRole(); // Display teacher information
}
