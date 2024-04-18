// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'view/tela1.dart';
import 'view/tela2.dart';
import 'view/tela3.dart';
import 'view/tela4.dart';
import 'view/tela5.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',
      //
      // ROTAS DE NAVEGAÇÃO
      //
      initialRoute: 't1',
      routes: {
        't1' :(context) => Tela1View(),
        't2' :(context) => Tela2View(),
        't3' :(context) => Tela3View(),
        't4' :(context) => Tela4View(),
        't5' :(context) => Tela5View(),
      },

    );
  }
}