import 'menu.dart';

import 'repository.dart';

PersonRepository personRepo = PersonRepository();
VehicleRepository vehicleRepo = VehicleRepository();
int read = 0;
void main(List<String> args) {
  print("välkommen till Parkeringsappen!");
  /*  stdout.write('skriv din namn');
  var name = stdin.readLineSync();
  stdout.write('skriv din din personnummer');
  var personNo = stdin.readLineSync();

  var person = Person(name: name.toString(), personnummer: personNo.hashCode);
  stdout.write('skriv din bil nummer');
  var carNo = stdin.readLineSync();
  var vehicle = Vehicle(registrnummer: carNo.toString());
  print('person ${person.name} och vehicle ${vehicle.registrnummer}'); */
  menu();
}
