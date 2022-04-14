import 'package:flutter/material.dart';
import 'package:simple_login_flutter/Screen/dashboard/dashboard.dart';
import 'package:simple_login_flutter/Screen/login/login.dart';

class NavigatorDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("KL"),
            ),
            accountName: Text("Kelvin Leonardi Kohsasih"),
            accountEmail: Text("kelvinleonardi@outlook.co.id"),
            decoration: BoxDecoration(color: Color(0xFF6F35A5)),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Account'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Sign Out'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }

}