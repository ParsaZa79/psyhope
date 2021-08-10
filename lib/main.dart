import 'package:flutter/material.dart';
import 'package:psyhope/view/pages/home_page.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PSYHOPE',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.green,
        canvasColor: Vx.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'IranSans',
      ),
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
