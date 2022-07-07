import 'package:smartcamp/model/domain/entities/campsEntities.dart';
import 'package:smartcamp/model/domain/infra/adapters/jsonToPlanting.dart';

class JsonToCamps {
  static CampEntities fromMap(Map json) {
    return CampEntities(
      id: json["id"],
      name: json["name"],
      planting: [
        if (json.containsKey('planting'))
          ...(json['planting'] as List).map(JsonToPlanting.fromMap).toList(),
      ],
    );
  }
}
