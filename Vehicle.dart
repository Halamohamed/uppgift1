import 'person.dart';

class Vehicle {
  String registrnummer;
  String? type;
  Person person = Person(name: "Hala", personnummer: 123);
  Vehicle(this.registrnummer);
}
