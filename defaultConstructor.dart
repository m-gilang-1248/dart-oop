class Laptop {
  String? merk;
  int? harga;

  //konstruktor
  Laptop(){
    print("Ini adalah konstruktor default");
  }
}

void main(List<String> args) {
  //disini laptop adalah objek dari kelas Laptop
  Laptop laptop = Laptop();
}