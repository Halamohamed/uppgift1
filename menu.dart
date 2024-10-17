import 'dart:io';
import 'person.dart';
import 'personMenu.dart';
import 'repository.dart';
import 'vehicleMenu.dart';

PersonRepository personRepo = PersonRepository();

void menu() {
  bool loop = true;

  while (loop) {
    print("vad vill du hantera?");
    print("1. Personer");
    print("2. Fordon");
    print("3. Parkeringsplatser");
    print("4. Parkeringar");
    print("5. Avsluta");

    print("välj ett alternativ (1-5): ");

    var read = stdin.readLineSync();

    switch (read) {
      case '1':
        print('hantera person');
        personMenu();
        break;
      case '2':
        print('hantera fordon');
        vehicleHandle();
        break;
      case '3':
        print('hantera parkeringsplatser');
        break;
      case '4':
        print('hantera parkeringar');
        break;
      case '5':
        print('Avsluta');
        loop = false;
      default:
        print('välja 1-5 ');
    }
  }
}

void vehicleHandle() {
  vehicleMenu();
}
