// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String? id;
  final String? name;
  final String? username;
  final String? email;
  final String? password;
  final String? whatsappNumber;

  User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.whatsappNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'password': password,
      'whatsappNumber': whatsappNumber,
    };
  }
}
