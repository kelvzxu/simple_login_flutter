import 'package:flutter/material.dart';
import 'package:simple_login_flutter/Screen/dashboard/dashboard.dart';
import 'package:simple_login_flutter/Screen/login/Component/already_have_an_account_acheck.dart';
import 'package:simple_login_flutter/Screen/register/register.dart';
import 'package:simple_login_flutter/component/background.dart';
import 'package:simple_login_flutter/component/text_input.dart';
import 'package:simple_login_flutter/component/button.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, this.title = 'Login'}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _login = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "Asset/icons/login.svg",
                height: size.height * 0.25,
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Sign In",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    RoundedInputField(
                      hintText: "Your Email",
                      icon: Icons.mail,
                      onChanged: (String value) {
                        setState(() {
                          _login = value;
                        });
                      },
                      validation: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email';
                        }
                        return null;
                      },
                    ),
                    RoundedPasswordField(
                      hintText: "Password",
                      onChanged: (String value) {
                        setState(() {
                          _password = value;
                        });
                      },
                      validation: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                    ),
                    RoundedButton(
                      text: "Sign In",
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DashboardPage();
                              },
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegistrationPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
