import 'package:flutter/material.dart';
import 'package:flutter_app/utiles/SpotifyColors.dart';
import 'package:flutter_app/vista/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colores.primaryColor),
        useMaterial3: true,
      ),
      home: Login(), // Aquí establecemos Login como la pantalla principal
    );
  }
}