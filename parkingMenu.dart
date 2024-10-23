import 'dart:io';
import 'dart:math';

import 'menu.dart';
import 'models/Parking.dart';

void ParkingMenu() {
  bool loop = true;
  while (loop) {
    print("Du har valt att hantera Parkering. Vad vill du göra?");
    print("1. Skapa ny parking");
    print("2. Visa alla parkering");
    print("3. Updatera parkering");
    print("4. Ta bort parering");
    print("5. Gå tillbaka till huvudmenyn");
    print("välj ett alternativ (1-5): ");
    var readParking = stdin.readLineSync();

    switch (readParking) {
      case '1':
        parkingCreate();
        stdout.writeln('skapat');
        break;
      case '2':
        getParking();
        stdout.writeln("hämta parkeringer");
        break;
      case '3':
        updateParking();
        stdout.writeln('pakering är uppdaterade');
        break;
      case '4':
        deleteParking();
        stdout.writeln('ta bort parkering');
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

void updateParking() {
  print("skriv parkering nummer du vill uppdatera");
  var number = stdin.readLineSync();
  for (var element in parkingRepo.getAll()) {
    if (element.id == number) {
      stdout.write('skriv den fordon nummer');
      var newNo = stdin.readLineSync();
      stdout.write('skriv den ny parkeringplats nummer');
      var parkNo = stdin.readLineSync();
      parkingRepo.update(
          element,
          Parking(element.id, newNo as int, parkNo as int, DateTime.now(),
              DateTime.now().add(Duration(hours: 2))));
    } else
      print('finns inte parkeringplatsen');
  }
}

void deleteParking() {}

void getParking() {
  parkingRepo.getAll();
}

void parkingCreate() {}

void parkingChoice(String? readParking) {}
