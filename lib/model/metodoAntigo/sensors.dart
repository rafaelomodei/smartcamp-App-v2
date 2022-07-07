class Sensors {
  bool irrigation;
  bool isActiveSensors;
  bool greenhouseCover;
  double airHumidity;
  double environmentTemperature;
  double electricConductivity;
  double waterTemperature;
  double waterOxygenLevel;
  double waterPH;

  Sensors(
    this.irrigation,
    this.isActiveSensors,
    this.greenhouseCover,
    this.airHumidity,
    this.environmentTemperature,
    this.electricConductivity,
    this.waterTemperature,
    this.waterOxygenLevel,
    this.waterPH,
  );

  bool get getIrrigation => irrigation;
  bool get getIsActiveSensors => isActiveSensors;
  bool get getGreenhouseCover => greenhouseCover;
  double get getAirHumidity => airHumidity;
  double get getEnvironmentTemperature => environmentTemperature;
  double get getElectricConductivity => electricConductivity;
  double get getWaterTemperature => waterTemperature;
  double get getWaterOxygenLevel => waterOxygenLevel;
  double get getWaterPH => waterPH;
  set setIrrigation(bool irrigation) => irrigation = irrigation;
  set setIsActiveSensors(bool state) => isActiveSensors = state;
  set setGreenhouseCover(bool state) => greenhouseCover = state;
  set setAirHumidity(double airHumidity) => this.airHumidity = airHumidity;
  set setEnvironmentTemperature(double environmentTemperature) =>
      this.environmentTemperature = environmentTemperature;
  set setElectricConductivity(double electricConductivity) =>
      this.electricConductivity = electricConductivity;
  set setWaterTemperature(double waterTemperature) =>
      this.waterTemperature = waterTemperature;
  set setWaterOxygenLevel(double waterOxygenLevel) =>
      this.waterOxygenLevel = waterOxygenLevel;
  set setWaterPH(double waterPH) => this.waterPH = waterPH;
}
