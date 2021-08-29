import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/views/components/input/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    this.hintText = 'Password',
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            Icons.lock,
            color: PRIMARY_COLOR,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: PRIMARY_COLOR,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
