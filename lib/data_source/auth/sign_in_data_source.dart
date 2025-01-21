import 'dart:convert';
import 'package:shs_project/data_source/dio_abstract_data_model.dart';
import 'package:shs_project/models/request/sign_in_request_model.dart';
import '../../models/response/sign_in_response_model.dart';

abstract class SignInDataSource {
  Future<SignInResponseModel> signIn(SignInRequestModel signInRequestModel);
}

class SignInDataSourceImpl implements SignInDataSource {
  final DioSingletonDataSource _dio = DioSingletonDataSource();

  @override
  Future<SignInResponseModel> signIn(
      SignInRequestModel signInRequestModel) async {
    final response = await _dio.dioInstance.post(
      '/signIn',
      data: jsonEncode(signInRequestModel.toJson()),
    );
    return SignInResponseModel.fromJson(response.statusCode!, response.data);
  }
}
