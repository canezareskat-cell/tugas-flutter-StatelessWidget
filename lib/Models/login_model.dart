import 'dart:convert';
import 'package:canezares_flutter_rorrrrrr/Models/login_model.dart';
LoginModels loginModelsFromJson(String str) => LoginModels.fromJson(json.decode(str));

String loginModelsToJson(LoginModels data) => json.encode(data.toJson());

class LoginModels {
    final bool status;
    final String message;
    final String token;

    LoginModels({
        required this.status,
        required this.message,
        required this.token,
    });

    factory LoginModels.fromJson(Map<String, dynamic> json) => LoginModels(
        status: json["status"],
        message: json["message"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "token": token,
    };
}