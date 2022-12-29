// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:darul_falah/features/auth/domain/usecases/auth_logout.dart';
import 'package:darul_falah/features/auth/domain/usecases/auth_register.dart';
import 'package:darul_falah/features/auth/domain/usecases/get_token.dart';
import 'package:darul_falah/features/auth/domain/usecases/save_token.dart';
import 'package:equatable/equatable.dart';

import 'package:darul_falah/features/auth/domain/entities/user.dart';
import 'package:darul_falah/features/auth/domain/usecases/auth_login.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required this.authLogin,
    required this.authRegister,
    required this.authLogout,
    required this.getToken,
    required this.saveToken,
  }) : super(UnlogedState());

  final AuthLogin authLogin;
  final AuthRegister authRegister;
  final AuthLogout authLogout;
  final GetToken getToken;
  final SaveToken saveToken;

  void login(User user) async {
    emit(LoadingLoginState());

    final result = await authLogin.execute(user);
    result.fold((failure) {
      emit(LoginErrorState(failure.message));
    }, (data) async {
      await saveToken.execute(data);
      emit(LogedState());
    });
  }

  void register(User user) async {
    emit(LoadingSignUpState());

    final result = await authLogin.execute(user);

    result.fold((failure) {
      emit(ErrorSignUpState(failure.message));
    }, (data) async {
      await saveToken.execute(data);
      emit(LogedState());
    });
  }

  void logout() async {
    final result = await authLogout.execute();

    result.fold((failure) {
      emit(LoginErrorState(failure.message));
    }, (data) async {
      emit(UnlogedState());
    });
  }

  void checkLoginState() async {
    final result = await getToken.execute();

    if (result != null) {
      emit(LogedState());
    } else {
      emit(UnlogedState());
    }
  }
}
