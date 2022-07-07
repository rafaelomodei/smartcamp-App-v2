import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartcamp/configuration/events/configEvents.dart';
import 'package:smartcamp/configuration/states/configState.dart';
import 'package:smartcamp/model/domain/repositories/getAllCampsRepository.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  final IGetAllCamps getAllCampsUseCases;
  late final StreamSubscription _sub;

  ConfigBloc(this.getAllCampsUseCases) : super(EmptyConfigState()) {
    _sub = getAllCampsUseCases.call().listen((data) {
      add(AddCamps(data));
    });

    on<AddCamps>((event, emit) => emit(LoadedConfigState(event.camps)));
  }

  @override
  Future<void> close() async {
    await _sub.cancel();
    await super.close();
  }
}
