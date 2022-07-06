import './sensors.dart';
import './plant.dart';

class Planting {
  Plant plant;
  Sensors sensors;

  Planting(this.plant, this.sensors);

  Sensors get getSensors => sensors;
}
