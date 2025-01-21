import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:shs_project/data_source/auth/sign_up_data_source.dart';
import 'package:shs_project/repository/auth/sign_up_repository.dart';
import 'package:shs_project/viewmodels/auth/sign_up_view_model.dart';
import 'package:shs_project/views/auth/sign_in_page.dart';

import 'data_source/dio_abstract_data_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (create) => SignUpViewModel(
            signUpRepository: SignUpRepositoryImpl(
              SignUpDataSourceImpl(),
            ),
          ),
        ),
        Provider(
          create: (create) => DioSingletonDataSource(),
        ),
      ],
      child: MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}
