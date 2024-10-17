import 'dart:io';
import 'menu.dart';
import 'person.dart';

void personMenu() {
  print("Du har valt att hantera Personer. Vad vill du göra?");
  print("1. Skapa ny person");
  print("2. Visa alla personer");
  print("3. Updatera person");
  print("4. Ta bort person");
  print("5. Gå tillbaka till huvudmenyn");
  print("välj ett alternativ (1-5): ");
  String? readPerson = stdin.readLineSync();

  personChoice(readPerson);
}

void updatePerson() {
  print("uppdate personen");
}









 //int person = int.parse(readPerson);
  /* if (readPerson != null && int.tryParse(readPerson) == 1) {
    print('skriv namn och mersonnummer ');
    String? name =
        stdin.readLineSync(encoding: SystemEncoding(), retainNewlines: true);
    var no = stdin.readByteSync();
    personRepo.add(Person(name: name.toString(), personnummer: no));
  } */