// Configurations:

const CAPACITY_MIN_BATTERY = 0.75;
const CAPACITY_MIN_DIESEL = 5.0;
const CAPACITY_MIN_PETROL = 10.0;

enum CarType {
  ELECTRIC,
  PETROL,
  DIESEL,
  HYBRID_ELECTRIC_PETROL,
  HYBRID_HYDROGEN_PETROL,
  HYBRID_DIESEL_PETROL,
}

mixin ElectricCarProperties {
  double ___capacityBattery = -1;
  double get capacityBattery => this.___capacityBattery;
  set capacityBattery(double value) {
    if (value < CAPACITY_MIN_BATTERY) {
      throw "Error: Battery capacity below minimum requirement.";
    }
    this.___capacityBattery = value;
  }
}

mixin PetrolCarProperties {
  double ___capacityPetrol = -1;
  double get capacityPetrol => this.___capacityPetrol;
  set capacityPetrol(double value) {
    if (value < CAPACITY_MIN_PETROL) {
      throw "Error: Diesel capacity below minimum requirement.";
    }
    this.___capacityPetrol = value;
  }
}

mixin DieselCarProperties {
  double ___capacityDiesel = -1;
  double get capacityDiesel => this.___capacityDiesel;
  set capacityDiesel(double value) {
    if (value < CAPACITY_MIN_DIESEL) {
      throw "Error: Diesel capacity below minimum requirement.";
    }
    this.___capacityDiesel = value;
  }
}

abstract class _Car {
  final CarType type;
  final String make;
  final String model;
  final int vin;
  _Car({
    required this.make,
    required this.model,
    required this.vin,
    required this.type,
  });
  void printVin() {
    print(this.vin);
  }
}

abstract class SemiTruckDiesel extends _Car with DieselCarProperties {
  SemiTruckDiesel({
    required String make,
    required String model,
    required int vin,
    required double fuelCapacity,
  }) : super(
          make: make,
          model: model,
          vin: vin,
          type: CarType.DIESEL,
        ) {
    this.capacityDiesel = fuelCapacity;
  }
}

class CarHybrid extends _Car with ElectricCarProperties, PetrolCarProperties {
  CarHybrid({
    required String make,
    required String model,
    required int vin,
    required double capacityPetrol,
    required double capacityBattery,
  }) : super(
          make: make,
          model: model,
          vin: vin,
          type: CarType.HYBRID_ELECTRIC_PETROL,
        ) {
    this.capacityPetrol = capacityPetrol;
    this.capacityBattery = capacityBattery;
  }
}

class CarAwkward extends _Car with PetrolCarProperties, DieselCarProperties {
  CarAwkward({
    required String make,
    required String model,
    required int vin,
    required double capacityPetrol,
    required double capacityDiesel,
  }) : super(
          make: make,
          model: model,
          vin: vin,
          type: CarType.HYBRID_DIESEL_PETROL,
        ) {
    this.capacityDiesel = capacityDiesel;
    this.capacityPetrol = capacityPetrol;
  }
}

abstract class ToyotaHybrid extends CarHybrid {
  ToyotaHybrid.standardBattery({
    required String model,
    required int vin,
    required double capacityPetrol,
  }) : super(
          vin: vin,
          model: model,
          make: "Toyota",
          capacityBattery: 1.0,
          capacityPetrol: capacityPetrol,
        );
}

class Prius extends ToyotaHybrid {
  Prius({required int vin})
      : super.standardBattery(model: "Prius", vin: vin, capacityPetrol: 15.0);
}



// class SemiTruckElectric {}
// class CarPetrol {}
