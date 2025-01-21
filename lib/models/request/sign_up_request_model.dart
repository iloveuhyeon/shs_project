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
