import 'package:flutter/material.dart';

import 'package:flutter_auth_ui/constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.color = PRIMARY_COLOR,
      this.textColor = Colors.white})
      : super(key: key);

  final String title;
  final Function onPressed;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: () => onPressed(),
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            ),
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => color),
          ),
        ),
      ),
    );
  }
}
