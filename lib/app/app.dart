import 'package:flutter/material.dart';

import '../home/presentation/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GG',
      theme: ThemeData(
        brightness: Brightness.dark,
        canvasColor: const Color(0xFF171717),
        accentColor: const Color(0xFFFECF03),
        cardColor: const Color(0xFF1F1F1F),
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}
