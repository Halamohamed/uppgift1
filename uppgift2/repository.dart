import 'models/Vehicle.dart';
import 'models/car.dart';
import 'models/parkingSpace.dart';
import 'models/person.dart';
import 'models/Parking.dart';

abstract class Repository<T> {
  List<T> _items = [];

  void add(T item) => _items.add(item);

  List<T> getAll() => _items;

  void update(T item, T newItem) {
    var index = _items.indexWhere((element) => element == item);
    _items[index] = newItem;
  }

  /* T getById(int id) {
    return _items.getById(id);
  }
 */
  void delete(T item) => _items.remove(item);
}

class PersonRepository extends Repository<Person> {
  List<Person> personList = [];
}

class VehicleRepository extends Repository<Vehicle> {
  List<Vehicle> vehicleList = [];
  //VehicleRepository(List list);
}

class CarRepository extends Repository<Car> {
  List<Car> carList = [];
}

class ParkingSpaceRepository extends Repository<Parkingspace> {
  List<Parkingspace> parkingSpaceList = [];
}

class ParkingRepository extends Repository<Parking> {
  final List<Parking> pakeringList = [];
}
