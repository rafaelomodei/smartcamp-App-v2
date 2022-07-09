import 'package:smartcamp/model/domain/entities/campEntity.dart';

abstract class ConfigState {}

class EmptyConfigState implements ConfigState {}

class LoadingConfigState implements ConfigState {}

class LoadedConfigState implements ConfigState {
  final List<CampEntity> camps;

  LoadedConfigState(this.camps);
}

class ExeptionConfigState implements ConfigState {
  final String menssage;

  ExeptionConfigState(this.menssage);
}
