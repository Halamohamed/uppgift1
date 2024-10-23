import 'dart:io';

import 'models/Vehicle.dart';
import 'main.dart';

void vehicleCreate() {
  print('skriv registernummer: ');
  var regNo = stdin.readLineSync();
  print('skriv din namn');
  String? name = stdin.readLineSync();
  print('skriv din personnummer');
  String? number = stdin.readLineSync();
  var personNo = int.tryParse(number!);
  var vehicle = Vehicle(regNo.toString());
  vehicle.person.name = name.toString();
  vehicle.person.personnummer = (personNo)!;
  vehicleRepo.add(Vehicle(regNo.toString()));
}

void vehicleMenu() {
  bool loop = true;
  while (loop) {
    print("Du har valt att hantera fordon. Vad vill du göra?");
    print("1. Skapa ny fordon");
    print("2. Visa alla fordon");
    print("3. Updatera fordon");
    print("4. Ta bort fordon");
    print("5. Gå tillbaka till huvudmenyn");
    print("välj ett alternativ (1-5): ");

    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        vehicleCreate();
        stdout.writeln('skapat');
        break;
      case '2':
        getVehicle();
        stdout.writeln("get fordon");
        break;
      case '3':
        updateVehicle();
        stdout.writeln('fordon är uppdaterade');
        break;
      case '4':
        deleteVehicle();
        stdout.writeln('ta bort fordon');
        break;
      case '5':
        stdout.write('tillbaka till menyn');
        return;
      default:
        stdout.writeln('fel du få välja 1-5 ');
    }
    loop = false;
  }
}

void getVehicle() {
  for (var element in vehicleRepo.getAll()) {
    print(
        'fordon med register nummer ${element.registrnummer} med personen namn ${element.person.name}');
  }
}

void updateVehicle() {
  print("skriv fordon registernummmer du vill uppdatera");
  var regNo = stdin.readLineSync();
  for (var element in vehicleRepo.getAll()) {
    if (element.registrnummer == regNo) {
      var newR = stdin.readLineSync();
      print('skriv den ny ägare');
      var newP = stdin.readLineSync();
      var vehicle = Vehicle(newR.toString());
      vehicle.person.name = newP!;
      vehicleRepo.update(element, vehicle);
    } else
      print('finns inte fordonen');
  }
}

void deleteVehicle() {
  print('skriv fordonen register nummer du vill ta bort: ');
  var deleteV = stdin.readLineSync();
  for (var element in vehicleRepo.getAll()) {
    if (element == deleteV) {
      var item = Vehicle(element.registrnummer);
      vehicleRepo.delete(item);
    } else
      print('finns inte fordonen');
  }
}
