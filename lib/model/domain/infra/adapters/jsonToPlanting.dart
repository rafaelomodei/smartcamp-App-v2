import 'package:smartcamp/model/domain/entities/plantingEntitie.dart';
import 'package:smartcamp/model/domain/infra/adapters/jsonToPlant.dart';
import 'package:smartcamp/model/domain/infra/adapters/jsonToSensors.dart';

class JsonToPlanting {
  static PlantingEntities fromMap(dynamic json) {
    return PlantingEntities(
      id: json["id"],
      plant: JsonToPlant.fromMap(json),
      sensors: JsonToSensors.fromMap(json),
      initialPlantingDate: json["initialPlantingDate"],
    );
  }

  static Map<String, dynamic> toMap(PlantingEntities planting) {
    return {
      'id': planting.id,
      'plant': planting.plant,
      'photo': planting.sensors,
      'initialPlantingDate': planting.initialPlantingDate,
    };
  }
}
