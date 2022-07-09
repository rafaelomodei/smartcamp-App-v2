import 'package:smartcamp/model/domain/entities/campEntity.dart';
import 'package:smartcamp/model/domain/repositories/campsRepository.dart';

abstract class IGetAllCamps {
  Stream<List<CampEntity>> call();
}

class GetAllCamps implements IGetAllCamps {
  final ICampsRepository repositiry;

  GetAllCamps(this.repositiry);

  @override
  Stream<List<CampEntity>> call() {
    return repositiry.getAllCamps();
  }
}
