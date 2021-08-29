import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/views/components/buttons/rounded_button.dart';
import 'package:flutter_auth_ui/views/login/login_screen.dart';
import 'package:flutter_auth_ui/views/signup/sign_up_screen.dart';
import 'package:flutter_auth_ui/views/welcome/components/background.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                'WELCOME TO EDU',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: PRIMARY_COLOR,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                'assets/icons/chat.svg',
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                title: 'LOGIN',
                onPressed: () {
                  print('Login Button');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }),
                  );
                },
              ),
              RoundedButton(
                title: 'SIGN UP',
                color: PRIMARY_LIGHT_COLOR,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
