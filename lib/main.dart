import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodies/login/logInPage.dart';

void main() {
  // disable Landscape mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  // MyApp
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = "Foodies";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: LogInPage(title: title),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}
