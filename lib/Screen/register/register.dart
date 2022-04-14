import 'package:flutter/material.dart';
import 'package:simple_login_flutter/Screen/login/Component/already_have_an_account_acheck.dart';
import 'package:simple_login_flutter/Screen/login/login.dart';
import 'package:simple_login_flutter/component/background.dart';
import 'package:simple_login_flutter/component/text_input.dart';
import 'package:simple_login_flutter/component/button.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key, this.title = 'Dashboard'}) : super(key: key);

  final String title;

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage>{
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _password = '';
  String _rpassword = '';

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
                "Asset/icons/register.svg",
                height: size.height * 0.22,
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    RoundedInputField(
                      hintText: "Username",
                      icon: Icons.person,
                      onChanged: (String value) {
                        setState(() {
                          _name = value;
                        });
                      },
                      validation: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Username';
                        }
                        return null;
                      },
                      // ErrorState: _validationUsername,
                    ),
                    RoundedInputField(
                      hintText: "Your Email",
                      icon: Icons.mail,
                      onChanged: (String value) {
                        setState(() {
                          _email = value;
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
                    RoundedPasswordField(
                      hintText: "Repeat Password",

                      onChanged: (String value) {
                        setState(() {
                          _rpassword = value;
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
                      text: "Sign Up",
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a dialog. In the real world,
                          // you'd often call a server or save the information in a database.
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('Hello, $_name your account $_email has been successfully registered'),
                                );
                              }
                          );
                        }
                      },
                    ),// Add TextFormFields and ElevatedButton here.
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
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
