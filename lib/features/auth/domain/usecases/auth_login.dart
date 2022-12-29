import 'package:dartz/dartz.dart';
import 'package:darul_falah/core/commons/failure.dart';
import 'package:darul_falah/features/auth/domain/entities/user.dart';
import 'package:darul_falah/features/auth/domain/repositories/auth_repository.dart';

class AuthLogin {
  final AuthRepository repository;

  AuthLogin(this.repository);

  Future<Either<Failure, String>> execute(User user) {
    return repository.login(user);
  }
}
