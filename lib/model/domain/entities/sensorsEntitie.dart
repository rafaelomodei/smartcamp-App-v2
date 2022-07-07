class SensorsEntities {
  final String id;
  final bool irrigation;
  final bool isActiveSensors;
  final bool greenhouseCover;
  final double airHumidity;
  final double environmentTemperature;
  final double electricConductivity;
  final double waterTemperature;
  final double waterOxygenLevel;
  final double waterPH;

  const SensorsEntities({
    required this.id,
    required this.irrigation,
    required this.isActiveSensors,
    required this.greenhouseCover,
    required this.airHumidity,
    required this.environmentTemperature,
    required this.electricConductivity,
    required this.waterTemperature,
    required this.waterOxygenLevel,
    required this.waterPH,
  });
}
