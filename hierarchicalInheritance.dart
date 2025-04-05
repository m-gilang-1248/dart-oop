class Bangun {
  // properties
  double? diameter1;
  double? diameter2;
}
class Lingkaran extends Bangun {
  // method untuk menghitung luas lingkaran
  double luas() {
    return 3.14 * diameter1! * diameter2!;
  }
}

class Segitiga extends Bangun {
  // method untuk menghidung luas sehitiga
  double luas() {
    return 0.5 * diameter1! * diameter2!;
  }
}

void main(List<String> args) {
  // membuat object dari class lingkaran
  Lingkaran lingkaran = new Lingkaran();
  // memberikan nilai diameter ke object
  lingkaran.diameter1 = 15.0;
  lingkaran.diameter2 = 30.0;
  // tampilkan luas dari lingkaran
  print("Luas Lingkaran: ${lingkaran.luas()}");

  // membuat object dari class segitiga
  Segitiga segitiga = new Segitiga();
  // memberikan nilai ke object
  segitiga.diameter1 = 8.0;
  segitiga.diameter2 = 16.0;
  // tampilkan luas segitiga
  print("Luas Segitiga: ${segitiga.luas()}");
}