import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class CustomDivider extends StatelessWidget {
  final String text;

  const CustomDivider({Key? key, this.text = 'OR'}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(children: [
        Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: PRIMARY_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFD9D9D9),
          ),
        )
      ]),
    );
  }
}
