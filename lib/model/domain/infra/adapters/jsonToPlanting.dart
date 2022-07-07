import 'package:smartcamp/model/domain/entities/plantingEntitie.dart';
import 'package:smartcamp/model/domain/infra/adapters/jsonToPlant.dart';
import 'package:smartcamp/model/domain/infra/adapters/jsonToSensors.dart';

class JsonToPlanting {
  static PlantingEntities fromMap(dynamic json) {
    return PlantingEntities(
      id: json["id"],
      plant: JsonToPlant.fromMap(json),
      sensors: JsonToSensors.fromMap(json),
      initialPlantingDate: DateTime.parse(json["initialPlantingDate"]),
    );
  }
}
