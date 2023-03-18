import 'package:factory_pattern/class.dart';
import 'package:flutter/material.dart';

class MobileAppLayout extends StatelessWidget {
  const MobileAppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // to Get a CarFactory object
    VehicleFactory carFactory = CarFactory();

    // Code that Uses the factory to create a Car object
    Vehicle car = carFactory.createVehicle();

    // To Get a BikeFactory object
    VehicleFactory bikeFactory = BikeFactory();

    //  Code that Uses the factory to create a Bike object
    Vehicle bike = bikeFactory.createVehicle();

    return MaterialApp(
      title: 'Factory Design Pattern',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Factory Design Pattern'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.car_rental),
              title: const Text('Car'),
              onTap: () {
                car.start();
                car.stop();
              },
            ),
            ListTile(
              title: const Text('Bike'),
              leading: Icon(Icons.directions_bike_rounded),
              onTap: () {
                bike.start();
                bike.stop();
              },
            ),
          ],
        ),
      ),
    );
  }
}