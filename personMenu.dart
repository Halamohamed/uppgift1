import 'dart:io';

import 'main.dart';
import 'menu.dart';
import 'person.dart';

void updatePerson() {
  print("uppdate personen");
}

void getPersons() {
  print("Här är alla personer: ");
}

void personMenu() {
  print("Du har valt att hantera Personer. Vad vill du göra?");
  print("1. Skapa ny person");
  print("2. Visa alla personer");
  print("3. Updatera person");
  print("4. Ta bort person");
  print("5. Gå tillbaka till huvudmenyn");
  print("välj ett alternativ (1-5): ");
  int readPerson = stdin.readByteSync();
  switch (readPerson) {
    case 1:
      var newP = newPerson();
      stdout.writeln(newP);
      break;
    case 2:
      getPersons();
      //stdout.writeln(() => personRepo.getAll());
      break;
    case 3:
      updatePerson();
      stdout.writeln('personen är uppdaterade');
      break;
    case 4:
      stdout.writeln('ta bort person');
      break;
    case 5:
      stdout.write('tillbaka till menyn');
      menu();
    default:
      stdout.writeln('fel du få välja 1-5 ');
  }
}
