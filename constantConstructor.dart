class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

class Student {
  final String? name;
  final int? age;
  final int? rollNumber;

  //Constant Constructor
  const Student({this.name, this.age, this.rollNumber});
}

class Car {
    final String? name;
    final String? model;
    final int? prize;

    //constant constructor
    const Car({this.name, this.model, this.prize});
}

void main(List<String> args) {
  //p1 dan p2 memiliki kode hash yang sama
  Point p1 = const Point(1, 2);
  print("Kode hash p1 adalah: ${p1.hashCode}");

  Point p2 = const Point(1, 2);
  print("Kode hash p2 adalah: ${p2.hashCode}");

  //tanpa menggunakan const
  //ini memiliki kode hash yang berbeda
  Point p3 = Point(2, 2);
  print("Kode hash p3 adalah: ${p3.hashCode}");

  Point p4 = Point(2, 2);
  print("Kode hash p4 adalah: ${p4.hashCode}");

    //disini student adalah object dari class Student
  const Student student = Student(name: "Budi", age: 28, rollNumber: 1);
  print("\nName: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

    //disini car adalah object dari class Car
  const Car car = Car(name: "BMW", model: "X5", prize: 50000);
  print("\nName: ${car.name}");
  print("Model: ${car.model}");
  print("Prize: ${car.prize}");
}