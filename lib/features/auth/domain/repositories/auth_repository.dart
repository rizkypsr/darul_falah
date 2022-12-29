import 'package:dartz/dartz.dart';
import 'package:darul_falah/core/commons/failure.dart';
import 'package:darul_falah/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> register(User user);
  Future<Either<Failure, String>> login(User user);
  Future<Either<Failure, String>> saveToken(String token);
  Future<String?> getToken();
  Future<Either<Failure, String>> logout();
}
