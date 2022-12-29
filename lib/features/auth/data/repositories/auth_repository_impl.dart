import 'dart:io';

import 'package:darul_falah/core/commons/exception.dart';
import 'package:darul_falah/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:darul_falah/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:darul_falah/features/auth/data/models/user_model.dart';
import 'package:darul_falah/features/auth/domain/entities/user.dart';
import 'package:darul_falah/core/commons/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:darul_falah/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<String?> getToken() async {
    final result = await localDataSource.getToken();
    return result;
  }

  @override
  Future<Either<Failure, String>> login(User user) async {
    try {
      final result = await remoteDataSource.login(UserModel.fromEntity(user));
      return Right(result);
    } on AuthenticationException {
      return const Left(AuthenticationFailure('Email atau password salah'));
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Gagal terhubung ke internet'));
    }
  }

  @override
  Future<Either<Failure, String>> logout() async {
    final result = await localDataSource.removeToken();
    return Right(result);
  }

  @override
  Future<Either<Failure, String>> register(User user) async {
    try {
      final result =
          await remoteDataSource.register(UserModel.fromEntity(user));
      return Right(result);
    } on AuthenticationException {
      return const Left(AuthenticationFailure('Email telah digunakan'));
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Gagal terhubung ke internet'));
    }
  }

  @override
  Future<Either<Failure, String>> saveToken(String token) async {
    try {
      final result = await localDataSource.saveToken(token);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure('Terjadi kesalahan saat login'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
