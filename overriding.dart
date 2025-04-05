class Binatang {
  void makan() {
    print("Binatang sedang makan");
  }
}

class Kucing extends Binatang {
  @override
  void makan() {
    print("Kucing sedang makan");
  }
}

void main(List<String> args) {
  Binatang binatang = Binatang();
  binatang.makan();

  Kucing kucing = Kucing();
  kucing.makan();
}