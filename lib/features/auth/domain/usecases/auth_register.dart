import 'package:dartz/dartz.dart';
import 'package:darul_falah/core/commons/failure.dart';
import 'package:darul_falah/features/auth/domain/entities/user.dart';
import 'package:darul_falah/features/auth/domain/repositories/auth_repository.dart';

class AuthRegister {
  final AuthRepository repository;

  AuthRegister(this.repository);

  Future<Either<Failure, String>> execute(User user) {
    return repository.register(user);
  }
}
