import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartcamp/configuration/blocs/configBloc.dart';

final configurationModule = [
  BlocProvider(create: (context) => ConfigBloc(context.read(), context.read())),
];
