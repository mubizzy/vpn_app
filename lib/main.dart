import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:vpn_basic_project/appPreferences/appPreferences.dart';
import 'package:vpn_basic_project/allScreens/home_screen.dart';

late Size sizeScreen;
Future<void> main() async {
  //  await AppPreferences.initHive;
  // await Hive.initFlutter();
  await AppPreferences.initHive();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key); //
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Free Vpn',
        theme: ThemeData(
          appBarTheme: AppBarTheme(centerTitle: true, elevation: 3),
        ),
        themeMode: AppPreferences.isModeDark ? ThemeMode.dark : ThemeMode.light,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(centerTitle: true, elevation: 3),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeSceen());
  }
}

extension AppTheme on ThemeData {
  Color get lightTextColor =>
      AppPreferences.isModeDark ? Colors.white70 : Colors.black54;
  Color get bottomNavigationColor =>
      AppPreferences.isModeDark ? Colors.white12 : Colors.redAccent;
}

// Scaffold(
//         body: Center(
//           child: Text(
//             "Hello World",
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),