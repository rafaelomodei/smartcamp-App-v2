import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcamp/model/metodoAntigo/listCamp.dart';
import 'package:smartcamp/model/metodoAntigo/listPlants.dart';
import 'package:smartcamp/screens/private/home/home.dart';
import 'package:smartcamp/theme/themeDefault.dart';
// Import the generated file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ListPlant(),
      ),
      ChangeNotifierProvider(
        create: (context) => ListCamp(),
      )
    ],
    child: SmartCamp(),
  ));
}

class SmartCamp extends StatelessWidget {
  const SmartCamp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeDefault(),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
