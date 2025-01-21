import 'package:dio/dio.dart';
import 'package:shs_project/data_source/auth/sign_in_data_source.dart';
import 'package:shs_project/models/request/sign_in_request_model.dart';
import 'package:shs_project/models/response/sign_in_response_model.dart';

abstract class SignInRepository {
  Future<SignInResponseModel> signIn(SignInRequestModel signInRequestModel);
}

class SignInRepositoryImpl implements SignInRepository {
  final SignInDataSource _signInDataSource;

  SignInRepositoryImpl(this._signInDataSource);

  @override
  Future<SignInResponseModel> signIn(
      SignInRequestModel signInRequestModel) async {
    try {
      final SignInResponseModel response =
          await _signInDataSource.signIn(signInRequestModel);
      if (response.statusCode == 200) {
        return response;
      } else {
        return SignInResponseModel(
            statusCode: response.statusCode, accessToken: '');
      }
    } on DioException catch (e) {
      return SignInResponseModel(
          statusCode: e.response!.statusCode!, accessToken: '');
    }
  }
}
