class SignInRequestModel {
  final String id;
  final String password;

  SignInRequestModel({
    required this.id,
    required this.password,
  });

  factory SignInRequestModel.fromJson(Map<String, dynamic> json) =>
      SignInRequestModel(
        id: json['id'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'password': password,
      };
}

class SignInResponseModel {
  final String accessToken;

  SignInResponseModel({
    required this.accessToken,
  });

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) =>
      SignInResponseModel(
        accessToken: json['accessToken'],
      );

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
      };
}

class SignUpRequestModel {
  final String id;
  final String password;
  final String userName;

  SignUpRequestModel({
    required this.id,
    required this.password,
    required this.userName,
  });

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      SignUpRequestModel(
        id: json['id'],
        password: json['password'],
        userName: json['userName'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'password': password,
        'userName': userName,
      };
}
