import 'dart:math';
//1
class Mobil {
  String? merk;
  String? model;
  int? tahun;

  Mobil(this.merk, this.model, this.tahun);

  void display(){
    print("Mobil: $merk, $model, $tahun");
  }
}

//2
class Mahasiswa {
  String? nama;
  int? nim;

  Mahasiswa({this.nama = "Fulan", this.nim = 00000});

  void display(){
    print("\nMahasiswa: $nama, NIM: $nim");
  }
}

//3
class Buku  {
  String? judul;
  String? pengarang;

  Buku(this.judul, this.pengarang);

  void display(){
    print("\nBuku: $judul, karya: $pengarang");
  }
}

//4
class Segitiga {
  double? alas;
  double? tinggi;
  String? jenis;

  Segitiga(this.alas, this.tinggi, this.jenis);

  Segitiga.sikuSiku(double? alas, double? tinggi, String? jenis){
    this.alas = alas;
    this.tinggi = tinggi;
    this.jenis = jenis;
  }

  Segitiga.samaSisi(double? sisi){
    this.alas = sisi;
    this.tinggi = (sisi! * sqrt(3)) / 2;
    this.jenis = "Sama sisi";
  }

  Segitiga.samaKaki(double? alas, double? tinggi){
    this.alas = alas;
    this.tinggi = tinggi;
    this.jenis = "Sama kaki";
  }

  void display(){
    print("\nSegitiga\nJenis: $jenis \nAlas: $alas \nTinggi: $tinggi");
  }
}

//5
class Warna {
  final int red;
  final int green;
  final int blue;

  const Warna(this.red, this.green, this.blue);

  void display(){
    print("\nWarna RGB: ($red, $green, $blue)");
  }
}

void main(List<String> args) {
  //1
  Mobil mobil = Mobil("Bugatti", "Bolide", 2024);
  mobil.display();

  //2
  Mahasiswa mahasiswa = Mahasiswa();
  mahasiswa.display();

  //3
  Buku buku = Buku("Pengantar Dart untuk Pemula", "Pak Eko");
  buku.display();

  //4
  Segitiga segitiga1 = Segitiga(10, 10, "futsu");
  segitiga1.display();

  Segitiga segitiga2 = Segitiga.sikuSiku(10, 20, "siku");
  segitiga2.display();

  Segitiga segitiga3 = Segitiga.samaSisi(30);
  segitiga3.display();

  Segitiga segitiga4 = Segitiga.samaKaki(8, 12);
  segitiga4.display();

  //5
  const warnaMerah = Warna(255, 0, 0);
  const warnaHijau = Warna(0, 255, 0);
  const warnaBiru = Warna(0, 0, 255);

  warnaMerah.display();
  warnaHijau.display();
  warnaBiru.display();
}