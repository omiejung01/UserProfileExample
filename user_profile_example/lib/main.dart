import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_profile_example/page/profile_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        dividerColor: Colors.black,
      ),
      title: title,
      home: ProfileScreen(),
      //home: MaterialApp(),
    );
  }
}