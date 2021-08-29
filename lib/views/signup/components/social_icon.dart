import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.iconName,
    required this.onTap,
  }) : super(key: key);

  final String iconName;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: PRIMARY_COLOR),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/$iconName.svg',
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
