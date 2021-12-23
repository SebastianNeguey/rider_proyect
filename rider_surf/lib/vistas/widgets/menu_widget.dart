import 'package:flutter/material.dart';
import 'package:rider_surf/vistas/home_page.dart';

import '../setting_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu Principal'),
          ),
          ListTile(
            title: const Text('Principal'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pushReplacementNamed(context, InputPage.routName);
            },
          ),
          ListTile(
            title: const Text('Ajustes'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pushReplacementNamed(context, SettingPage.routName);
            },
          ),
        ],
      ),
    );
  }
}
