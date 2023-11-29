import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentor_map/pages/intro_page.dart';
import 'package:mentor_map/pages/trainer_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light // transparent status bar
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      // home: const IntroPage(),
      home: const TrainerPage(),
    );
  }
}
