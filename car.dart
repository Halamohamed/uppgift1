import 'Vehicle.dart';
import 'person.dart';

class Car extends Vehicle {
  Person owner;
  Car({required String registrnummer, required this.owner}) : super('');
}
