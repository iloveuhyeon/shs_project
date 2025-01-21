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
