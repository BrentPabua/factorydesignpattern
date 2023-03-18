// Define the abstract Product class
abstract class Vehicle {
  void start();
  void stop();
}

// Define concrete Product classes
class Car implements Vehicle {
  @override
  void start() {
    print('Starting Car...');
  }

  @override
  void stop() {
    print('Stopping Car...');
  }
}

class Bike implements Vehicle {
  @override
  void start() {
    print('Starting Bike...');
  }

  @override
  void stop() {
    print('Stopping Bike...');
  }
}

// Define the abstract Factory class
abstract class VehicleFactory {
  Vehicle createVehicle();
}

// Define concrete Factory classes
class CarFactory implements VehicleFactory {
  @override
  Vehicle createVehicle() {
    return Car();
  }
}

class BikeFactory implements VehicleFactory {
  @override
  Vehicle createVehicle() {
    return Bike();
  }
}

void main() {
  // Get a CarFactory object
  VehicleFactory carFactory = CarFactory();

  // Use the factory to create a Car object
  Vehicle car = carFactory.createVehicle();

  // Get a BikeFactory object
  VehicleFactory bikeFactory = BikeFactory();

  // Use the factory to create a Bike object
  Vehicle bike = bikeFactory.createVehicle();

  // Start and stop the vehicles
  car.start();
  car.stop();
  bike.start();
  bike.stop();
}