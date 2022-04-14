import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Color(0xFFF1E6FF),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String? Function(String?) validation;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.icon,
    required this.validation
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        cursorColor:Color(0xFF6F35A5),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xFF6F35A5),
          ),
          hintText: hintText,
          border: InputBorder.none,
          // errorText: ErrorState,
        ),
        validator: validation,
      ),
    );
  }
}

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  final String? Function(String?) validation;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.hintText,
    required this.validation
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Color(0xFF6F35A5),
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            Icons.lock,
            color: Color(0xFF6F35A5),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color(0xFF6F35A5),
          ),
          border: InputBorder.none,
        ),
        validator: validation,
      ),
    );
  }
}
