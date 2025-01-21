import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shs_project/viewmodels/auth/sign_up_view_model.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpViewModel signUpViewModel = context.read<SignUpViewModel>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SignUp',
                style: TextStyle(fontSize: 30),
              ),
              TextField(
                controller: signUpViewModel.idController,
                decoration: InputDecoration(hintText: 'id'),
              ),
              TextField(
                controller: signUpViewModel.pwController,
                decoration: InputDecoration(hintText: 'password'),
              ),
              TextField(
                controller: signUpViewModel.userNameController,
                decoration: InputDecoration(hintText: 'userName'),
              ),
              ElevatedButton(
                onPressed: () async => context.read<SignUpViewModel>().signUp(),
                child: Text('sign up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
