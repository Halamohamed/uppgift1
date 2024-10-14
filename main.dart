import 'dart:io';

import 'person.dart';
import 'repository.dart';

void main(List<String> args) {
  var hala = Person(name: "Hala", personnummer: 123);
  print("välkommen till Parkeringsappen!");

  PersonRepository personRepo = PersonRepository();
  List persons = [];

  void meny() {
    print("vad vill du hantera?");
    print("1. Personer");
    print("2. Fordon");
    print("3. Parkeringsplatser");
    print("4. Parkeringar");
    print("5. Avsluta");

    print("välj ett alternativ (1-5): ");
  }

  void personMeny() {
    print("Du har valt att hantera Personer. Vad vill du göra?");
    print("1. Skapa ny person");
    print("2. Visa alla personer");
    print("3. Updatera person");
    print("4. Ta bort person");
    print("5. Gå tillbaka till huvudmenyn");
    print("välj ett alternativ (1-5): ");
  }

  void newPerson() {
    stdout.write("Skriv personens namn");
    String personName = stdin.toString();
    stdout.write("Skriv personens personnummer");
    int personNo = stdin.readByteSync();
    Person item = Person(name: personName, personnummer: personNo);
    personRepo.add(item);
    persons.add(item);
  }

  void updatePerson() {
    print("uppdate personen");
  }

  void getPersons() {
    print("Här är alla personer: ");
  }

  void start() {
    int read = stdin.readByteSync();
    while (read < 5) {
      if (read == 1) {
        personMeny();
        int readPerson = stdin.readByteSync();
        while (readPerson < 5) {
          if (readPerson == 1) {
            newPerson();
          }
          if (readPerson == 2) {
            getPersons();
          }
          if (readPerson == 3) {
            updatePerson();
          }
        }
      }
      print("du behöver välja 1-5 ");
    }
  }

  start();
}
