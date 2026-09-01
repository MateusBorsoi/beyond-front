import 'package:flutter/material.dart';
import 'package:flutter_app/core/session.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});
  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();

  final destinations = const <String, String>{
    'Início': '/home',
    'Gastos': '/spends',
    'Configurações': '/settings',
  };
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  void _closeDrawer() {
    Session.navigation.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (var entry in widget.destinations.entries)
            ListTile(
              title: Text(entry.key),
              onTap: () {
                Session.navigation.push(entry.value);
                _closeDrawer();
              },
            ),
        ],
      ),
    );
  }
}
