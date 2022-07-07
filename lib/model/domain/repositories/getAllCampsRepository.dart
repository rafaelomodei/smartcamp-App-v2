import 'package:smartcamp/model/domain/entities/campsEntities.dart';
import 'package:smartcamp/model/domain/repositories/campsRepository.dart';

abstract class IGetAllCamps {
  Stream<List<CampEntities>> call();
}

class GetAllCamps implements IGetAllCamps {
  final ICampsRepository repositiry;

  GetAllCamps(this.repositiry);

  @override
  Stream<List<CampEntities>> call() {
    return repositiry.getAllCamps();
  }
}
