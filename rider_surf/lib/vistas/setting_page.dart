import 'package:flutter/material.dart';
import 'package:rider_surf/vistas/widgets/menu_widget.dart';

class SettingPage extends StatelessWidget {
  static final String routName = 'setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ajustes')),
        body: const Center(
          child: Text('My Page!'),
        ),
        drawer: MenuWidget());
  }
}
