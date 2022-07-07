import 'package:smartcamp/model/domain/entities/campsEntities.dart';
import 'package:smartcamp/model/domain/repositories/campsRepository.dart';

abstract class IAddNewCamp {
  Future<void> call(CampEntities camp);
}

class AddNewCamp implements IAddNewCamp {
  final ICampsRepository repositiry;

  AddNewCamp(this.repositiry);

  @override
  Future<void> call(CampEntities camp) async {
    return await repositiry.AddNewCamp(camp);
  }
}
