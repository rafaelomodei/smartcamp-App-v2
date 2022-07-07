import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartcamp/appWidget.dart';

// Import the generated file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const AppWidget());

  // runApp(MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(
  //       create: (context) => ListPlant(),
  //     ),
  //     ChangeNotifierProvider(
  //       create: (context) => ListCamp(),
  //     )
  //   ],
  //   child: SmartCamp(),
  // ));
}

// class SmartCamp extends StatelessWidget {
//   const SmartCamp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: themeDefault(),
//       // home: Home(),
//       home: ConfigurationPage(),

//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
