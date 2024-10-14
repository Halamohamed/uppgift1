import 'dart:io';

import 'menu.dart';

import 'repository.dart';

PersonRepository personRepo = PersonRepository([]);
VehicleRepository vehicleRepo = VehicleRepository([]);
int read = 0;
void main(List<String> args) {
  print("välkommen till Parkeringsappen!");

  menu();
}
