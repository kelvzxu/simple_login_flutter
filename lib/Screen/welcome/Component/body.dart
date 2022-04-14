import 'package:flutter/material.dart';
import 'package:simple_login_flutter/Screen/login/login.dart';
import 'package:simple_login_flutter/component/background.dart';
import 'package:simple_login_flutter/component/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "Asset/icons/splash.svg",
              height: size.height * 0.352,
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
              EdgeInsets.only(left: 64, right: 64, top: 16, bottom: 16),
              child: Text(
                "Stay organised and live stress-free with you-do app",
                textAlign: TextAlign.center,
              ),
            ),
            RoundedButton(
              text: "Sign In",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                      // return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}