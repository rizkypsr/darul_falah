import 'package:darul_falah/features/auth/domain/repositories/auth_repository.dart';

class GetToken {
  final AuthRepository repository;

  GetToken(this.repository);

  Future<String?> execute() {
    return repository.getToken();
  }
}
