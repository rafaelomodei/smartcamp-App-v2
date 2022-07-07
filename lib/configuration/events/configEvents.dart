import 'package:smartcamp/model/domain/entities/campsEntities.dart';

abstract class ConfigEvent {}

class FetchCamps implements ConfigEvent {}

class AddNewCampEvent implements ConfigEvent {
  final CampEntities camp;

  AddNewCampEvent(this.camp);
}
