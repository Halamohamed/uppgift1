class Parkingspace {
  late int id;
  String? adress;
  int? prisPerHour;

  Parkingspace(this.id, this.adress, this.prisPerHour);

  Parkingspace.addNew(adress, prisPerHour);
  double get PrisPerHour => prisPerHour! / 60;

  @override
  String toString() {
    return 'Id: $id, Address: [$adress], Pris/timme: $PrisPerHour';
  }
}
