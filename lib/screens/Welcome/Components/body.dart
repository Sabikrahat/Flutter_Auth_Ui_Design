import 'package:flutter/material.dart';
import 'package:welcome_login_signup_page/components/rounded_button.dart';
import 'package:welcome_login_signup_page/screens/Login/login_screen.dart';
import 'package:welcome_login_signup_page/screens/Signup/signup_screen.dart';
import 'background.dart';
import 'package:welcome_login_signup_page/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This size will provide us total height and width of our screen.
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome To EDU",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Image.asset(
                "assets/icons/chat.png",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "LOGIN",
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
              RoundedButton(
                color: kPrimaryLightColor,
                textColor: Colors.black,
                text: "SIGNUP",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
