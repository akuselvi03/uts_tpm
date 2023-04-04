import 'package:flutter/material.dart';
import './login.dart';

void main() => runApp(LoginUI());

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UTS TPM",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Welcome",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const LoginScreen(),
      ),
    );
  }
}
