import 'Vehicle.dart';

class Parkingspace {
  late int id;
  String? adress;
  Vehicle? parkedVehicle;
  int? prisPerHour;
  List<Vehicle> vehicles = [];

  Parkingspace(this.id, this.adress, this.vehicles, this.prisPerHour);

  Parkingspace.addNew(adress, parkedVehicle, prisPerHour);
  double get PrisPerHour => prisPerHour! / 60;

  void addVehicle(Vehicle vehicle) {
    vehicles.add(vehicle);
  }

  void removeVehicle(Vehicle vehicle) {
    vehicles.remove(vehicle);
  }

  @override
  String toString() {
    return 'Id: $id, Address: [$adress], Parkerad fordon: $parkedVehicle, Pris/timme: $PrisPerHour';
  }
}
