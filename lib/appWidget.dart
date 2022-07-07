import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/configuration/configurationModule.dart';
import 'package:smartcamp/model/campsModule.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...campsModule,
        ...configurationModule,
      ],
      child: MaterialApp(),
    );
  }
}
