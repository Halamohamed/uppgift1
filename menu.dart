import 'dart:io';
import 'person.dart';
import 'personMenu.dart';
import 'repository.dart';

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

String newPerson() {
  stdout.write("Skriv personens namn");
  var personName = stdin.readLineSync();
  stdout.write("Skriv personens personnummer");
  var personNo = int.parse(stdin.readLineSync()!);
  Person item = Person(name: personName.toString(), personnummer: personNo);
  personRepo.add(item);
  return "skapat";
}

void getPersons() {
  print("Här är alla personer: ");
  print('Parkeringsplatsstatus:');
  for (var person in personRepo.getAll()) {
    print('person ${person.name} personnummer ${person.personnummer}');
  }
}

void deletePerson() {
  print('skriv personen nummer');
  var deleteP = stdin.readLineSync();
  for (var element in personRepo.getAll()) {
    if (element == deleteP) {
      var item = Person(name: element.name, personnummer: element.personnummer);
      personRepo.delete(item);
    }
    print('finns inte personen');
  }
}

void personChoice(var readPerson) {
  switch (readPerson) {
    case '1':
      var newP = newPerson();
      stdout.writeln(newP);
      break;
    case '2':
      getPersons();
      stdout.writeln("get persons");
      break;
    case '3':
      updatePerson();
      stdout.writeln('personen är uppdaterade');
      break;
    case '4':
      deletePerson();
      stdout.writeln('ta bort person');
      break;
    case '5':
      stdout.write('tillbaka till menyn');
      return;
    default:
      stdout.writeln('fel du få välja 1-5 ');
  }
}
