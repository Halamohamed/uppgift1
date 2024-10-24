import 'Vehicle.dart';

class Parking {
  int? id;
  int vehicleId;
  int parkingSpaceId;
  DateTime startTime;
  DateTime endTime;
  List<Vehicle> vehicles = [];

  Parking(
      id, this.vehicleId, this.parkingSpaceId, this.startTime, this.endTime);

  void addVehicle(Vehicle vehicle) {
    vehicles.add(vehicle);
  }

  void removeVehicle(Vehicle vehicle) {
    vehicles.remove(vehicle);
  }
}
