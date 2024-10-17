import 'Vehicle.dart';
import 'car.dart';
import 'parkingSpace.dart';
import 'person.dart';

abstract class Repository<T> {
  List<T> _items = [];

  void add(T item) => _items.add(item);

  List<T> getAll() => _items;

  void update(T item, T newItem) {
    var index = _items.indexWhere((element) => element == item);
    _items[index] = newItem;
  }

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
