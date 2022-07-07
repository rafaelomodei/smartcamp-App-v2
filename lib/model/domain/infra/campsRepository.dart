import 'package:smartcamp/model/domain/entities/campsEntities.dart';
import 'package:smartcamp/model/domain/infra/adapters/jsonToCamps.dart';
import 'package:smartcamp/model/domain/infra/dataSource/campsDataSource.dart';
import 'package:smartcamp/model/domain/repositories/campsRepository.dart';

class CampsRepository implements ICampsRepository {
  final ICampsDataSource dataSource;

  CampsRepository(this.dataSource);

  @override
  Stream<List<CampEntities>> getAllCamps() {
    final stream = dataSource.getAllCamps();

    return stream.map(_convert);
  }

  List<CampEntities> _convert(List<Map> list) {
    return list.map(JsonToCamps.fromMap).toList();
  }
}
