import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smartcamp/model/domain/entities/campEntity.dart';
import 'package:smartcamp/model/domain/infra/adapters/jsonToCamps.dart';
import 'package:smartcamp/model/domain/infra/dataSource/campsDataSource.dart';
import 'package:smartcamp/utils/const.dart';

class CampsFirestoreDataSource implements ICampsDataSource {
  final FirebaseFirestore firestore;

  CampsFirestoreDataSource(this.firestore);

  @override
  Stream<List<Map>> getAllCamps() {
    final ref = firestore.collection(collectionCamp);
    final snapshots = ref.snapshots();
    return snapshots.map((e) => e.docs).map(_convert);
  }

  List<Map> _convert(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
    return docs
        .map((document) => {
              'id': document.id,
              ...document.data(),
            })
        .toList();
  }

  // @override
  // Future<void> addCamp(Map<String, dynamic> campMap) async {
  //   final ref = firestore.collection('camps');
  //   campMap.remove('id');
  //   ref.add(campMap);
  // }
}
