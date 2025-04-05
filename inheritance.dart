class Orang {
  // property
  String? nama;
  int? umur;

  // Method
  void tampil() {
    print("Nama: $nama");
    print("Umur: $umur");
  }
}

class Murid extends Orang {
  // property
  String? namaSekolah;
  String? alamatSekolah;

  // method
  void tampilInfoSekolah() {
    print("Nama Sekolah: $namaSekolah");
    print("Alamat Sekolah: $alamatSekolah");
  }
}

void main(List<String> args) {
  // membuat object dari class
  var murid = Murid();
  murid.nama = "Gilang";
  murid.umur = 18;
  murid.namaSekolah = "SMK N 3";
  murid.alamatSekolah = "Jepara";
  murid.tampil();
  murid.tampilInfoSekolah();
}