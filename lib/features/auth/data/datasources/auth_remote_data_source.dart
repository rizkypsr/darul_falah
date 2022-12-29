import 'package:darul_falah/core/commons/exception.dart';
import 'package:darul_falah/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<String> login(UserModel user);
  Future<String> register(UserModel user);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<String> login(UserModel user) async {
    const response = 200;

    if (response == 200) {
      return "access-token";
    } else if (response == 500) {
      throw AuthenticationException();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<String> register(UserModel user) async {
    const response = 200;

    if (response == 200) {
      return "access-token";
    } else if (response == 500) {
      throw AuthenticationException();
    } else {
      throw ServerException();
    }
  }
}
