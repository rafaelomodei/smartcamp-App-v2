import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/model/domain/external/campsFirestoreDataSource.dart';
import 'package:smartcamp/model/domain/infra/campsRepository.dart';
import 'package:smartcamp/model/domain/infra/dataSource/campsDataSource.dart';
import 'package:smartcamp/model/domain/repositories/campsRepository.dart';
import 'package:smartcamp/model/domain/useCases/addCampsRepository.dart';
import 'package:smartcamp/model/domain/useCases/getAllCampsRepository.dart';

final campsModule = [
  Provider<FirebaseFirestore>.value(value: FirebaseFirestore.instance),
  Provider<ICampsDataSource>(
      create: (context) => CampsFirestoreDataSource(context.read())),
  Provider<ICampsRepository>(
      create: (context) => CampsRepository(context.read())),
  Provider<IGetAllCamps>(create: (context) => GetAllCamps(context.read())),
  Provider<IAddNewCamp>(create: (context) => AddNewCamp(context.read())),
];
