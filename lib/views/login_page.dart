import 'package:flutter/material.dart';

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
                'Login',
                style: TextStyle(fontSize: 30),
              ),
              TextField(),
              TextField(),
              ElevatedButton(
                onPressed: () {},
                child: Text('login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
