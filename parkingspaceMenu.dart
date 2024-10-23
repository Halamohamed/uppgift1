import 'dart:io';

import 'menu.dart';
import 'models/parkingSpace.dart';

void ParkingspaceMenu() {
  bool loop = true;
  while (loop) {
    print("Du har valt att hantera parkeringplatser. Vad vill du göra?");
    print("1. Skapa ny parkeringplats");
    print("2. Visa alla parkeringplatser");
    print("3. Updatera parkeringplats");
    print("4. Ta bort parkeringplats");
    print("5. Gå tillbaka till huvudmenyn");
    print("välj ett alternativ (1-5): ");

    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        createParkingspace();
        stdout.writeln('skapat');
        break;
      case '2':
        getParkingspace();
        stdout.writeln("hämta parkeringplatser");
        break;
      case '3':
        updateParkingspace();
        stdout.writeln('parkeringplatsen är uppdaterade');
        break;
      case '4':
        deleteParkingspace();
        stdout.writeln('ta bort parkeringplats');
        break;
      case '5':
        stdout.write('tillbaka till menyn');
        loop = false;
      default:
        stdout.writeln('fel du få välja 1-5 ');
    }
    loop = false;
  }
}

void updateParkingspace() {
  print("skriv parkering plats nummer du vill uppdatera");
  var number = stdin.readLineSync();
  for (var element in parkingSpaceRepo.getAll()) {
    if (element.adress == number) {
      stdout.write('skriv den ny address');
      var newAdress = stdin.readLineSync();
      stdout.write('skriv den ny address');
      var prisPerHour = stdin.readLineSync();
      parkingSpaceRepo.update(element,
          Parkingspace(element.id, newAdress, int.tryParse(prisPerHour!)));
    } else
      print('finns inte parkeringplatsen');
  }
}

void deleteParkingspace() {}

void getParkingspace() {
  parkingSpaceRepo.getAll();
}

void createParkingspace() {}
