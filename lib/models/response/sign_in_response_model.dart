class SignInResponseModel {
  final int statusCode;
  final String accessToken;

  SignInResponseModel({
    required this.statusCode,
    required this.accessToken,
  });

  factory SignInResponseModel.fromJson(
          int statusCode, Map<String, dynamic> json) =>
      SignInResponseModel(
        statusCode: statusCode,
        accessToken: json['accessToken'],
      );
}
