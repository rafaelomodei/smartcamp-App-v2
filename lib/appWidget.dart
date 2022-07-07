import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/configuration/configurationModule.dart';
import 'package:smartcamp/model/campsModule.dart';
import 'package:smartcamp/screens/private/home/home.dart';
import 'package:smartcamp/screens/public/login/login.dart';
import 'package:smartcamp/theme/themeDefault.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...campsModule,
        ...configurationModule,
      ],
      child: MaterialApp(
        theme: themeDefault(),
        home: Login(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
