import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () async => GoogleSignIn().signIn(),
              child: Text('google login'),
            ),
          ],
        ),
      ),
    );
  }
}
