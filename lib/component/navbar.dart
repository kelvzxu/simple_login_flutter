import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF6F35A5),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: Center(
        child: Text("Dashboard"),
      ),
      actions: <Widget>[
        IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
            })
      ],
    );
  }
}