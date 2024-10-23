class Parking {
  int? id;
  int vehicleId;
  int parkingSpaceId;
  DateTime startTime;
  DateTime endTime;

  Parking(
      id, this.vehicleId, this.parkingSpaceId, this.startTime, this.endTime);
}
