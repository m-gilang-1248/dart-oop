import 'dart:convert';

class Student {
    String? name;
    int? age;
    int? rollNumber;

    //default constructor
    Student(){
        print("This is a default constructor");
    }

    //named constuctor
    Student.namedConstructor(String name, int age, int rollNumber){
        this.name = name;
        this.age = age;
        this.rollNumber = rollNumber;
    }
}

class Mobile {
  String? name;
  String? color;
  int? prize;

  Mobile(this.name, this.color, this.prize);
  
  //disini Mobile() adalah named constructor
  Mobile.namedConstructor(this.name, this.color, [this.prize=0]);

  void display(){
    print("\nMobile name: $name.");
    print("Mobile color: $color.");
    print("Mobile prize: $prize.");
  }
}

class Animal {
  String? name;
  int? age;

  //default constructor
  Animal(){
    print("Ini adalah default constructor");
  }

  //named.construcctor
  Animal.namedConstructor(String name, int age){
    this.name = name;
    this.age = age;
  }

  //named constructor
  Animal.namedConstructor2(String name){
    this.name = name;
  }
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.fromJson(Map<String, dynamic> json){
    name = json['name'];
    age = json['age'];
  }

  Person.fromJsonString(String JsonString){
    Map<String, dynamic> json = jsonDecode(JsonString);
    name = json['name'];
    age = json['age'];
  }
}
void main(){
    //disini student adalah object dari class Student
    Student student = Student.namedConstructor("John", 20, 1);
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("Roll Number: ${student.rollNumber}");

    var mobile1 = Mobile("Samsung", "Black", 18000000);
    mobile1.display();
    var mobile2 = Mobile.namedConstructor("Xiaomi", "Pebble White");
    mobile2.display();

    Animal animal = Animal.namedConstructor("Anjing", 2);
    print("\nName: ${animal.name}");
    print("Age: ${animal.age}");

    Animal animal2 = Animal.namedConstructor2("Kucing");
    print("\nNama: ${animal2.name}");

    //disini person adalah object dari class Person
    String jsonString1 = '{"name": "Agus", "age": 20}';
    String jsonString2 = '{"name": "Budi", "age": 27}';

    Person p1 = Person.fromJsonString(jsonString1);
    print("\nPerson 1 name: ${p1.name}");
    print("Person 1 age: ${p1.age}");

    Person p2 = Person.fromJsonString(jsonString2);
    print("\nPerson 2 name: ${p2.name}");
    print("Person 2 age: ${p2.age}");
}