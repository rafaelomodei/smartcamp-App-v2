import './planting.dart';
import './sensors.dart';
import './plant.dart';
import './camp.dart';

void main() {
  Sensors sensors = Sensors(false, true, false, 0, 0, 2, 3, 7, 0);
  Plant plantMilho = Plant('Milho', 'photo', new DateTime(2022));

  Camp camp = Camp('Hortaliças');
  Planting planting = Planting(plantMilho, sensors);

  camp.addPlant(planting);
  print('Nome do campo: ${camp.getName}');
  print('Plantações ${camp.getListPlanting[0].plant.toString()}');
}
