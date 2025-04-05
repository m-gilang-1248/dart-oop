class Vehicle {
  String _model;
  int _year;

  Vehicle(this._model, this._year);

  // Getter method
  String get model => _model;

  // Setter method
  set model (String model) => _model = model;

  // Getter method
  int get year => _year;

  // Setter method
  set year(int year) => _year = year;
}

void main(List<String> args) {
  var vehicle = Vehicle("Toyota", 2019);
  print(vehicle.model);
  print(vehicle.year);
}