import 'package:smartcamp/model/domain/entities/campEntity.dart';
import 'package:smartcamp/model/domain/repositories/campsRepository.dart';

abstract class IAddNewCamp {
  Future<void> call(CampEntity camp);
}

// class AddNewCamp implements IAddNewCamp {
//   final ICampsRepository repositiry;

//   AddNewCamp(this.repositiry);

//   @override
//   Future<void> call(CampEntity camp) async {
//     return await repositiry.AddNewCamp(camp);
//   }
// }
