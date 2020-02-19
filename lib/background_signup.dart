import 'package:flutter/material.dart';
import 'package:learn_flutter/signup_form.dart';
// import 'package:learn_flutter/login_form.dart';
// import 'package:flutter_login/flutter_login.dart';

class BackgroundColorSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SignupScreen(),
      ),
    );
  }
}
