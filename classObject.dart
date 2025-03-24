class Hewan {
  String? nama;
  int? jumlahKaki;
  int? umur;

  void display(){
    print("Nama Hewan: $nama");
    print("Jumlah Kaki: $jumlahKaki");
    print("Umur: $umur");
  }
}

class PersegiPanjang {
  double? panjang;
  double? lebar;

  double area(){
    return panjang! * lebar!;
  }
}

class BungaSederhana {
  double? pokok;
  double? sukuBunga;
  double? waktu;

  double bunga(){
    return (pokok! * sukuBunga! * waktu!) / 100;
  }
}

class Rumah {
  String? nama;
  String? alamat;
  int? jumlahKamar;

  void display(){
    print("\nNama rumah: $nama \nAlamat: $alamat \nJumlah kamar: $jumlahKamar");
  }
}

void main(List<String> args) {
  Hewan hewan = Hewan();
  hewan.nama = "Singa";
  hewan.jumlahKaki = 4;
  hewan.umur = 10;
  hewan.display();

  PersegiPanjang persegiPanjang = PersegiPanjang();
  persegiPanjang.panjang = 10;
  persegiPanjang.lebar = 5;
  print("Luas persegi panjang adalah: ${persegiPanjang.area()}");

  BungaSederhana bungaSederhana = BungaSederhana();
  bungaSederhana.pokok = 1000;
  bungaSederhana.sukuBunga = 10;
  bungaSederhana.waktu = 2;
  print("Bunga sederhana adalah: ${bungaSederhana.bunga()}");

  Rumah rumah = Rumah();
  rumah.nama = "House";
  rumah.alamat = "Jl. Sultan Hadlirin";
  rumah.jumlahKamar = 3;
  rumah.display();
}