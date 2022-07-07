import 'package:smartcamp/model/domain/entities/plantEntities.dart';
import 'package:smartcamp/model/domain/entities/sensorsEntitie.dart';

class PlantingEntities {
  final String id;
  final PlantEntities plant;
  final SensorsEntities sensors;
  final String initialPlantingDate;

  const PlantingEntities({
    required this.id,
    required this.plant,
    required this.sensors,
    required this.initialPlantingDate,
  });
}
