import 'package:smartcamp/model/domain/entities/campsEntities.dart';

abstract class ICampsRepository {
  Stream<List<CampEntities>> getAllCamps();
}
