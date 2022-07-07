import 'package:smartcamp/model/domain/entities/campsEntities.dart';

abstract class ConfigEvent {}

class AddCamps implements ConfigEvent {
  final List<CampEntities> camps;

  AddCamps(this.camps);
}
