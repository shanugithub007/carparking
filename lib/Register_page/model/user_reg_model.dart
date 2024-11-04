// Register_page/model/user_reg_model.dart
// To parse this JSON data, do// To parse this JSON data, do
//
//     final userRegModel = userRegModelFromJson(jsonString);

import 'dart:convert';

UserRegModel userRegModelFromJson(String str) => UserRegModel.fromJson(json.decode(str));

String userRegModelToJson(UserRegModel data) => json.encode(data.toJson());

class UserRegModel {
    String? status;
    String? message;

    UserRegModel({
        this.status,
        this.message,
    });

    factory UserRegModel.fromJson(Map<String, dynamic> json) => UserRegModel(
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
    };
}
