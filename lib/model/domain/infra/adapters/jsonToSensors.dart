import 'package:smartcamp/model/domain/entities/plantEntities.dart';
import 'package:smartcamp/model/domain/entities/sensorsEntitie.dart';

class JsonToSensors {
  static SensorsEntities fromMap(Map json) {
    return SensorsEntities(
      id: json["id"],
      irrigation: json["irrigation"],
      isActiveSensors: json["isActiveSensors"],
      greenhouseCover: json["greenhouseCover"],
      airHumidity: json["airHumidity"],
      environmentTemperature: json["environmentTemperature"],
      electricConductivity: json["electricConductivity"],
      waterTemperature: json["waterTemperature"],
      waterOxygenLevel: json["waterOxygenLevel"],
      waterPH: json["waterPH"],
    );
  }

  static Map<String, dynamic> toMap(SensorsEntities sensors) {
    return {
      'id': sensors.id,
      'irrigation': sensors.irrigation,
      'isActiveSensors': sensors.isActiveSensors,
      'greenhouseCover': sensors.greenhouseCover,
      'airHumidity': sensors.airHumidity,
      'environmentTemperature': sensors.environmentTemperature,
      'electricConductivity': sensors.electricConductivity,
      'waterTemperature': sensors.waterTemperature,
      'waterOxygenLevel': sensors.waterOxygenLevel,
      'waterPH': sensors.waterPH,
    };
  }
}
