import 'package:flutter/material.dart';
import 'package:foodies/login/logInStep.dart';
import 'package:foodies/login/logInLogo.dart';

class LogInPage extends StatelessWidget {
  final String title;
  const LogInPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            LogInLogo(),
            Text(
              "Login",
              style: TextStyle(
                fontFamily: "cursive",
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: Colors.white,
              ),
            ),
            LogInStep(title: title),
          ],
        ),
      ),
    );
  }
}
