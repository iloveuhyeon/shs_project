import 'package:flutter/cupertino.dart';
import 'package:shs_project/models/request/sign_up_request_model.dart';

import '../../repository/auth/sign_up_repository.dart';

class SignUpViewModel extends ChangeNotifier {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  late final SignUpRepository _signUpRepository;
  bool _loading = false;

  SignUpViewModel({
    required SignUpRepository signUpRepository,
  }) : _signUpRepository = signUpRepository;

  TextEditingController get idController => _idController;

  TextEditingController get pwController => _pwController;

  TextEditingController get userNameController => _userNameController;

  bool get loading => _loading;

  Future<bool> signUp() async {
    _loading = true;
    notifyListeners();
   final response = await _signUpRepository.signUp(
      SignUpRequestModel(
        id: _idController.text,
        password: _pwController.text,
        userName: _userNameController.text,
      ),
    );
    _loading = false;
    notifyListeners();
    return response;
  }
}
