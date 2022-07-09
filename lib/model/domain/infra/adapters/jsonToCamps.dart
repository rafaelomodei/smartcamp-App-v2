import 'package:smartcamp/model/domain/entities/campEntity.dart';

class JsonToCamps {
  static CampEntity fromMap(Map json) {
    return CampEntity(
      id: json["id"],
      name: json["name"],
      // planting: [
      //   if (json.containsKey('planting'))
      //     ...(json['planting'] as List).map(JsonToPlanting.fromMap).toList(),
      // ],
    );
  }

  // static Map<String, dynamic> toMap(CampEntity camp) {
  //   return {
  //     'id': camp.id,
  //     'name': camp.name,
  //     // 'plantings': camp.planting.map(
  //     //   (planting) => JsonToPlanting.toMap(planting),
  //     // ),
  //   };
  // }
}
