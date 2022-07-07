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
}
