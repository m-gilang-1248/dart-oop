class Mobil {
  // property
  String? nama;
  double? harga;
}

class Tesla extends Mobil {
  // method untuk menampilkan nilai dari property
  void tampil() {
    print("Nama: ${nama}");
    print("Harga: ${harga}");
  }
}

class Model3 extends Tesla {
  // property
  String? warna;

  // method untuk menampilkan nilai property
  void tampil() {
    super.tampil();
    print("Warna: ${warna}");
  }
}

void main(List<String> args) {
  // membuat object dari class Model3
  Model3 m = new Model3();
  // memberikan nilai ke object
  m.nama = "Tesla Model 3";
  m.harga = 50000.00;
  m.warna = "Merah";
  // menampilkan nilai dari object
  m.tampil();
}