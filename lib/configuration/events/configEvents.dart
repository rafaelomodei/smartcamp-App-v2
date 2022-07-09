import 'package:smartcamp/model/domain/entities/campEntity.dart';

abstract class ConfigEvent {}

class FetchCamps implements ConfigEvent {}

// class AddNewCampEvent implements ConfigEvent {
//   final CampEntity camp;

//   AddNewCampEvent(this.camp);
// }
