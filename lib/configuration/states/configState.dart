import 'package:smartcamp/model/domain/entities/campsEntities.dart';

abstract class ConfigState {}

class EmptyConfigState implements ConfigState {}

class LoadingConfigState implements ConfigState {}

class LoadedConfigState implements ConfigState {
  final List<CampEntities> camps;

  LoadedConfigState(this.camps);
}

class ExeptionConfigState implements ConfigState {
  final String menssage;

  ExeptionConfigState(this.menssage);
}
