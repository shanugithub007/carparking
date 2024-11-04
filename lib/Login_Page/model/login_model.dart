// Login_Page/model/login_model.dart
// To parse this JSON data, do// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    String? refresh;
    String? access;
    User? user;

    LoginModel({
        this.refresh,
        this.access,
        this.user,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        refresh: json["refresh"],
        access: json["access"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

  get status => null;

    Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
        "user": user?.toJson(),
    };
}

class User {
    int? id;
    String? username;
    String? email;

    User({
        this.id,
        this.username,
        this.email,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
    };
}
