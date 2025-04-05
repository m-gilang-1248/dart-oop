// #1
import 'dart:io';

import 'hierarchicalInheritance.dart';

class Hewan {
  String? nama;
  void suara() {
    print("Hewan bersuara");
  }
}

class Kucing extends Hewan {
  String? jenisBulu;
}

void main(List<String> args) {
  // #1
  print("#1");
  Kucing kucing = Kucing();
  kucing.nama = "Elmo";
  kucing.jenisBulu = "Lebat";
  print("Nama hewan: ${kucing.nama}");
  print("Bulu hewan: ${kucing.jenisBulu}");
  kucing.suara();

  // #2
  print("\ ");
  print("#2");
  var rekening = Rekening(10000);
  rekening.setor();
  rekening.tarik();

  //#3
  print("\ ");
  print("#3");
  var persegi = Persegi();
  persegi.hitungLuas();
  var segitiga = Segitiga();
  segitiga.hitungLuas();

  //#4
  print("\ ");
  print("#4");
  var lingkaran = Lingkaran();
  lingkaran.hitungLuas();
}

// #2
class Rekening {
  double _saldo;

  Rekening(this._saldo);

  double get saldo => _saldo;

  set saldo(double saldo) => _saldo = saldo;

  void setor() {
    print("Berhasil melakukan setor senilai ${saldo}");
  }

  void tarik() {
    print("Berhasil melakukan tarik tunai ${saldo}");
  }
}

// #3
class BangunDatar {
  void hitungLuas() {
    print("Masukkan rummus untuk menghitung luas");
  }
}

class Persegi extends BangunDatar {
  @override
  void hitungLuas() {
    print("Mengitung luas persegi");
  }
}

class Segitiga extends BangunDatar {
  @override
  void hitungLuas() {
    print("Menghitung luas segitiga");
  }
}


// #4
abstract class Bentuk {
  void hitungLuas();
}

class Lingkaran extends Bentuk {
  void hitungLuas() {
    print("Menghitung luas lingkaran");
  }
}