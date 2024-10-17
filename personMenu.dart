import 'dart:io';
import 'menu.dart';
import 'person.dart';

void personMenu() {
  bool loop = true;
  while (loop) {
    print("Du har valt att hantera Personer. Vad vill du göra?");
    print("1. Skapa ny person");
    print("2. Visa alla personer");
    print("3. Updatera person");
    print("4. Ta bort person");
    print("5. Gå tillbaka till huvudmenyn");
    print("välj ett alternativ (1-5): ");
    var readPerson = stdin.readLineSync();

    personChoice(readPerson);
    loop = false;
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

void updatePerson() {
  print("skriv personen nummer du vill uppdatera");
  var person = stdin.readLineSync();
  for (var element in personRepo.getAll()) {
    if (element.personnummer == person) {
      var newp = stdin.readLineSync();
      personRepo.update(element,
          Person(name: newp.toString(), personnummer: element.personnummer));
    } else
      print('finns inte personen');
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
  //print('Parkeringsplatsstatus:');
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
    } else
      print('finns inte personen');
  }
}










 //int person = int.parse(readPerson);
  /* if (readPerson != null && int.tryParse(readPerson) == 1) {
    print('skriv namn och mersonnummer ');
    String? name =
        stdin.readLineSync(encoding: SystemEncoding(), retainNewlines: true);
    var no = stdin.readByteSync();
    personRepo.add(Person(name: name.toString(), personnummer: no));
  } */