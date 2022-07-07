import 'package:smartcamp/model/domain/entities/plantEntities.dart';

class JsonToPlant {
  static PlantEntities fromMap(Map json) {
    return PlantEntities(
      id: json["id"],
      name: json["name"],
      photo: json["photo"],
    );
  }

  static Map<String, dynamic> toMap(PlantEntities plant) {
    return {
      'id': plant.id,
      'name': plant.name,
      'photo': plant.photo,
    };
  }
}
