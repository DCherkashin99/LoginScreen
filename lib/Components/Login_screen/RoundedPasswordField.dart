import 'package:flutter/material.dart';
import 'package:login_screen/Components/Login_screen/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.black,
        style: TextStyle(
          fontSize: 30.0,
          color:Color.fromRGBO(67,76,75,1),
        ),
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.visibility_off_rounded,
            color: Color.fromRGBO(44, 61, 81, 1),
            size: 30,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}