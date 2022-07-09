import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartcamp/configuration/events/configEvents.dart';
import 'package:smartcamp/configuration/states/configState.dart';
import 'package:smartcamp/model/domain/entities/campEntity.dart';
import 'package:smartcamp/model/domain/useCases/addCampsRepository.dart';
import 'package:smartcamp/model/domain/useCases/getAllCampsRepository.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  final IGetAllCamps getAllCampsUseCases;
  // final IAddNewCamp addNewCampsUseCases;

  ConfigBloc(this.getAllCampsUseCases) : super(EmptyConfigState()) {
    on<FetchCamps>(_fetchedCamps, transformer: restartable());
    // on<AddNewCampEvent>(_addNewCamp, transformer: restartable());
  }

  // Future<void> _addNewCamp(AddNewCampEvent event, emit) async {
  //   await addNewCampsUseCases.call(event.camp);
  // }

  // Future<void> _fetchedCamps(event, emit) async {
  //   emit(LoadingConfigState());

  //   await emit.forEach<List<CampEntity>>(
  //     getAllCampsUseCases.call(),
  //     onData: (camps) => LoadedConfigState(camps),
  //   );
  // }

  Future<void> _fetchedCamps(event, Emitter emit) async {
    emit(LoadingConfigState());

    await emit.onEach<List<CampEntity>>(getAllCampsUseCases.call(),
        onData: (queues) {
      emit(LoadedConfigState(queues));
    }, onError: (error, st) {
      emit(ExeptionConfigState(error.toString()));
    });
  }
}
