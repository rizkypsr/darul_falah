import 'dart:convert';

import 'package:darul_falah/features/auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    id,
    name,
    username,
    email,
    password,
    whatsappNumber,
  }) : super(
          id: id,
          name: name,
          username: username,
          email: email,
          password: password,
          whatsappNumber: whatsappNumber,
        );

  factory UserModel.fromEntity(User user) {
    return UserModel(
      id: user.id,
      name: user.name,
      username: user.username,
      email: user.email,
      password: user.password,
      whatsappNumber: user.whatsappNumber,
    );
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      whatsappNumber: map['whatsappNumber'] != null
          ? map['whatsappNumber'] as String
          : null,
    );
  }

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());
}
