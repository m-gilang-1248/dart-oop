// membuat class abstract berserta method abstract
abstract class Kendaraan {
  void jalankan();
  void berhenti();
}

// implementsi class abstract
class Mobil extends Kendaraan {
  @override
  void jalankan() {
    print("Mobil mulai bergerak.");
  }

  @override
  void berhenti() {
    print("Mobil berhenti.");
  }
}

// menggunakan class abstract
void main(List<String> args) {
  // membuat object dari class nyata Mobil
  Kendaraan mobil = Mobil();

  // memanggil method dari kelas abstract
  mobil.jalankan();
  mobil.berhenti();
}