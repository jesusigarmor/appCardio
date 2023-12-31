import 'package:appcardio/src/features/login/screens/login/login.screen.dart';
import 'package:appcardio/src/features/login/screens/splash_screen/splash_screen.screen.dart';
import 'package:appcardio/src/features/login/screens/welcome/welcome.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.indigo),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: const WelcomeScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cardio AI")),
      body: const Center(child: Text("Login")),
    );
  }
}
