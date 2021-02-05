import 'package:flutter/material.dart';
import 'package:welcome_login_signup_page/components/already_have_an_account.dart';
import 'package:welcome_login_signup_page/components/rounded_button.dart';
import 'package:welcome_login_signup_page/components/rounded_input_field.dart';
import 'package:welcome_login_signup_page/components/rounded_password_field.dart';
import 'package:welcome_login_signup_page/screens/Login/login_screen.dart';
import 'package:welcome_login_signup_page/screens/Signup/Components/background.dart';
import 'package:welcome_login_signup_page/screens/Signup/Components/or_divider.dart';
import 'package:welcome_login_signup_page/screens/Signup/Components/social_icon.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/signup.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email...",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.png",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.png",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.png",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
