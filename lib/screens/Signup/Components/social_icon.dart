import 'package:flutter/material.dart';
import 'package:welcome_login_signup_page/constants.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;

  const SocialIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconSrc,
          height: 20.0,
          width: 20.0,
        ),
      ),
    );
  }
}
