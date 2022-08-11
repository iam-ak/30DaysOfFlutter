import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Center(
          child: Text("Login Page",style: TextStyle(
            color: Colors.amber,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
    );
  }
}