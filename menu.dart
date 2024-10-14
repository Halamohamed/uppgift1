import 'dart:io';
import 'main.dart';
import 'person.dart';
import 'personMenu.dart';
import 'repository.dart';

PersonRepository personRepo = PersonRepository([]);

void menu() {
  // while (true) {
  print("vad vill du hantera?");
  print("1. Personer");
  print("2. Fordon");
  print("3. Parkeringsplatser");
  print("4. Parkeringar");
  print("5. Avsluta");

  print("välj ett alternativ (1-5): ");

  int read = stdin.readByteSync();

  switch (read) {
    case 1:
      print('hantera person');
      personMenu();
      break;
    case 2:
      print('hantera fordon');

      break;
    case 3:
      print('hantera parkeringsplatser');

      break;
    case 4:
      print('hantera parkeringar');

      break;
    case 5:
      print('Avsluta');
      break;
    default:
      print('välja 1-5 ');
  }
}
//}

String newPerson() {
  stdout.write("Skriv personens namn");
  // String personName = stdin.readLineSync(in);
  stdout.write("Skriv personens personnummer");
  int personNo = int.parse(stdin.readLineSync()!);
  Person item = Person(name: 'personName', personnummer: personNo);
  personRepo.add(item);
  return "skapat";
}
