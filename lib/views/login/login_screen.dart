import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/views/components/buttons/rounded_button.dart';
import 'package:flutter_auth_ui/views/components/input/rounded_input_field.dart';
import 'package:flutter_auth_ui/views/components/input/rounded_password_field.dart';
import 'package:flutter_auth_ui/views/login/components/already_have_an_account_check.dart';
import 'package:flutter_auth_ui/views/login/components/background.dart';
import 'package:flutter_auth_ui/views/signup/sign_up_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: PRIMARY_COLOR,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                'assets/icons/login.svg',
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: 'Your email',
                onChanged: (value) {
                  print(value);
                },
              ),
              RoundedPasswordField(onChanged: (value) {}),
              RoundedButton(title: 'LOGIN', onPressed: () {}),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
