import 'package:dartz/dartz.dart';
import 'package:darul_falah/core/commons/failure.dart';
import 'package:darul_falah/features/auth/domain/repositories/auth_repository.dart';

class SaveToken {
  final AuthRepository repository;

  SaveToken(this.repository);

  Future<Either<Failure, String>> execute(String token) {
    return repository.saveToken(token);
  }
}
