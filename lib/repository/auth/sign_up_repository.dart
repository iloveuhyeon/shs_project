import 'package:shs_project/models/request/sign_up_request_model.dart';
import 'package:shs_project/models/response/sign_up_response_model.dart';
import '../../data_source/auth/sign_up_data_source.dart';

abstract class SignUpRepository {
  Future<bool> signUp(SignUpRequestModel signUpRequestModel);
}

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpDataSource _signUpDataSource;

  SignUpRepositoryImpl(this._signUpDataSource);

  @override
  Future<bool> signUp(SignUpRequestModel signUpRequestModel) async {
    try {
      final SignUpResponseModel response =
          await _signUpDataSource.signUp(signUpRequestModel);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
