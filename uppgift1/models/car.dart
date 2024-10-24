import 'Vehicle.dart';
import 'person.dart';

class Car extends Vehicle {
  int? id;
  Person owner;
  Car({required String registrnummer, required this.owner}) : super('');
}
