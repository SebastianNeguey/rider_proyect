import 'package:flutter/material.dart';
import 'package:rider_surf/vistas/home_page.dart';
import 'package:rider_surf/vistas/setting_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      initialRoute: InputPage.routName,
      routes: {
        InputPage.routName: (BuildContext context) => InputPage(),
        SettingPage.routName: (BuildContext context) => SettingPage()
      },
    );
  }
}
