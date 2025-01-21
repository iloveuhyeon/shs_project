import 'package:flutter/material.dart';
import 'package:shs_project/views/auth/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SignIn',
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'id'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'password'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('SignIn'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => SignUpPage(),
                  ),
                ),
                child: Text('create new account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
