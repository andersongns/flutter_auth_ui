import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: PRIMARY_LIGHT_COLOR,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
