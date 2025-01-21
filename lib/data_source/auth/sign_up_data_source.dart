import 'dart:convert';
import 'package:shs_project/models/response/sign_up_response_model.dart';
import '../../models/request/sign_up_request_model.dart';
import '../dio_abstract_data_model.dart';

abstract class SignUpDataSource {
  Future<SignUpResponseModel> signUp(SignUpRequestModel signUpRequestModel);
}

class SignUpDataSourceImpl implements SignUpDataSource {
  final DioSingletonDataSource _dio = DioSingletonDataSource();

  @override
  Future<SignUpResponseModel> signUp(
      SignUpRequestModel signInRequestModel) async {
    final response = await _dio.dioInstance.post(
      '/signUp',
      data: jsonEncode(signInRequestModel.toJson()),
    );
    print(response);
    return SignUpResponseModel(statusCode: response.statusCode!);
  }
}
