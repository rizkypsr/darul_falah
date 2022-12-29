import 'package:dartz/dartz.dart';
import 'package:darul_falah/core/commons/failure.dart';
import 'package:darul_falah/features/auth/domain/repositories/auth_repository.dart';

class AuthLogout {
  final AuthRepository repository;

  AuthLogout(this.repository);

  Future<Either<Failure, String>> execute() {
    return repository.logout();
  }
}
