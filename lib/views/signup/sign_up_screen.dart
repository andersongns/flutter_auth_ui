import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/views/components/buttons/rounded_button.dart';
import 'package:flutter_auth_ui/views/components/input/rounded_input_field.dart';
import 'package:flutter_auth_ui/views/components/input/rounded_password_field.dart';
import 'package:flutter_auth_ui/views/login/components/already_have_an_account_check.dart';
import 'package:flutter_auth_ui/views/login/login_screen.dart';
import 'package:flutter_auth_ui/views/signup/components/background.dart';
import 'package:flutter_auth_ui/views/signup/components/custom_divider.dart';
import 'package:flutter_auth_ui/views/signup/components/social_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                'SIGNUP',
                style: TextStyle(
                  color: PRIMARY_COLOR,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                'assets/icons/signup.svg',
                height: size.height * 0.35,
              ),
              RoundedInputField(hintText: 'Your email', onChanged: (value) {}),
              RoundedPasswordField(onChanged: (value) {}),
              RoundedButton(title: 'SIGNUP', onPressed: () {}),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }),
                  );
                },
              ),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    iconName: 'facebook',
                    onTap: () {},
                  ),
                  SocialIcon(
                    iconName: 'twitter',
                    onTap: () {},
                  ),
                  SocialIcon(
                    iconName: 'google-plus',
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
