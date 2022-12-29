import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/register.body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (_, state) {
        if (state is ErrorSignUpState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }

        if (state is LogedState) {
          Navigator.pushNamedAndRemoveUntil(
              context, homeRoute, (route) => false);
        }
      },
      child: RegisterBody(),
    );
  }
}
