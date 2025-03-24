class Student {
  String? name;
  int? age;
  int? rollNumber;

  //konstruktor
  Student(this.name, this.age, this.rollNumber);
}

//Parameterized Constructor dengan Parameter Bernama dalam Dart
class Murid {
  String? nama;
  int? umur;
  int? noabs;

  Murid({String? nama, int? umur, int? noabs}){
    this.nama = nama;
    this.umur = umur;
    this.noabs = noabs;
  }
}

// Parameterized Constructor dengan Nilai Default dalam Dart
class Gakusei {
  String? nama;
  int? umur;

  //konstruktor
  Gakusei({String? nama = "Kamado", int? umur = 23}){
    this.nama = nama;
    this.umur = umur;
  }
}

void main(List<String> args) {
  Student student = Student("John", 18, 32);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

  Murid murid = Murid(nama: "Dodi", umur: 21, noabs: 12);
  print("\nNama: ${murid.nama}");
  print("Umur: ${murid.umur}");
  print("Nomor absen: ${murid.noabs}");

  Gakusei gakusei = Gakusei();
  print("\nWatashi no namae: ${gakusei.nama}");
  print("Watashi no umur: ${gakusei.umur}");
}