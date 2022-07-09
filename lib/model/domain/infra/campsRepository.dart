import 'package:smartcamp/model/domain/entities/campEntity.dart';
import 'package:smartcamp/model/domain/infra/adapters/jsonToCamps.dart';
import 'package:smartcamp/model/domain/infra/dataSource/campsDataSource.dart';
import 'package:smartcamp/model/domain/repositories/campsRepository.dart';

class CampsRepository implements ICampsRepository {
  final ICampsDataSource dataSource;

  CampsRepository(this.dataSource);

  @override
  Stream<List<CampEntity>> getAllCamps() {
    final stream = dataSource.getAllCamps();

    return stream.map(_convert);
  }

  List<CampEntity> _convert(List<Map> list) {
    return list.map(JsonToCamps.fromMap).toList();
  }

  // @override
  // Future<void> AddNewCamp(CampEntity camp) async {
  //   final map = JsonToCamps.toMap(camp);
  //   await dataSource.addCamp(map);
  // }
}
