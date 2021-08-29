import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  const AlreadyHaveAnAccountCheck({
    Key? key,
    required this.onTap,
    this.login = true,
  }) : super(key: key);

  final Function onTap;
  final bool login;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account ? " : 'Already have An Account ? ',
          style: TextStyle(color: PRIMARY_COLOR),
        ),
        GestureDetector(
          onTap: () => onTap(),
          child: Text(
            login ? 'Sign Up' : 'Sign In',
            style: TextStyle(
              color: PRIMARY_COLOR,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
