import 'dart:io';

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

void updateParking() {}

void deleteParking() {}

void getParking() {}

void parkingCreate() {}

void parkingChoice(String? readParking) {}
