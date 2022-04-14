import 'dart:ui';

// import 'package:first_flutter_app/ui/screen/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:simple_login_flutter/Screen/dashboard/Component/body.dart';
import 'package:simple_login_flutter/component/navbar.dart';
import 'package:simple_login_flutter/component/navigator_drawer.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigatorDrawer(),
        appBar: NavBar(),
        body:Body()
    );
  }
}

