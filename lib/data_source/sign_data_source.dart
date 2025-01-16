import 'package:shs_project/data_source/dio_abstract_data_model.dart';
import 'package:shs_project/models/sign_model.dart';

abstract class SignInDataSource{
  Future<SignInResponseModel> signIn(SignInRequestModel signInRequestModel);
  Future<void> signUp(SignUpRequestModel signUpRequestModel);
}