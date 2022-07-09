import 'package:smartcamp/model/domain/entities/campEntity.dart';

abstract class ICampsDataSource {
  Stream<List<Map>> getAllCamps();
  // Future<void> addCamp(Map<String, dynamic> campMap);
}
