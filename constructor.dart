// Orang orang = Orang("Budi", 40);
//tanpa constructor:
// Orang orang = Orang();
// orang.nama = "Budi";
// orang.umur = 40;

import 'dart:collection';

class Siswa {
  String? nama;
  int? umur;
  int? nim;

  //constructor
  Siswa (String nama, int umur, int nim){
    print("Konstruktor dipanggil");
    this.nama = nama;
    this.umur = umur;
    this.nim = nim;
  }
}

class Guru {

  String? nama;
  int? umur;
  String? matkul;
  double? gaji;

  //konstruktor
  Guru(String nama, int umur, String matkul, double gaji){
    this.nama = nama;
    this.umur= umur;
    this.matkul = matkul;
    this.gaji = gaji;
  }

  //method
  void tampil(){
    print("\nNama: ${this.nama}");
    print("Umur: ${this.umur}");
    print("Mata kuliah: ${this.matkul}");
    print("Pendapatan: ${this.gaji}");
  }
}

void main(List<String> args) {
  Siswa siswa = Siswa("Budi", 30, 2212);
  print("Nama: ${siswa.nama}");
  print("Umur: ${siswa.umur}");
  print("NIM: ${siswa.nim}");

  Guru guru1 = Guru("Agus", 43, "Geografi", 8084058.00);
  guru1.tampil();
  Guru guru2 = Guru("Sutrisna", 32, "Gambar", 23837.00);
  guru2.tampil();
}