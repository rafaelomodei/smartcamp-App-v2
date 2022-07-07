import 'package:smartcamp/model/domain/entities/plantEntities.dart';
import 'package:smartcamp/model/domain/entities/plantingEntitie.dart';

class JsonToPlant {
  static PlantEntities fromMap(Map json) {
    return PlantEntities(
      id: json["id"],
      name: json["name"],
      photo: json["photo"],
    );
  }
}
