//CLASS
class ClassName {
  //variable
  //method
}

class Mobil {
  String? merk;
  String? model;
  int? tahun;

  void klakson(){
    print("Tin! Tin!");
  }
}

//OBJEK
// ClassName objek = ClassName();

// void main(){
//   Mobil mobil1 = Mobil();
// }

void main(){
  Mobil mobil1 = Mobil();

  mobil1.merk = "Toyota";
  mobil1.model = "Corolla";
  mobil1.tahun = 2020;

  print(mobil1.merk);
  print(mobil1.model);
  print(mobil1.tahun);

  mobil1.klakson();

  Car car1 = Car("Honda", "Civic", 2018);

  print(car1.brand);
  print(car1.model);
  print(car1.year);
}

//CONSTRUCTOR
class Car {
  String? brand;
  String? model;
  int? year;

  Car(String brand, String model, int year){
    this.brand = brand;
    this.model = model;
    this.year = year;
  }

  void buzzer(){
    print("Beep! Beep!");
  }
}