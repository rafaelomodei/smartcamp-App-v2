import 'package:smartcamp/model/domain/entities/campEntity.dart';

abstract class ICampsRepository {
  Stream<List<CampEntity>> getAllCamps();

  // Future<void> AddNewCamp(CampEntity camp);
}
