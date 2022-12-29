import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_button.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/auth/domain/entities/user.dart';
import 'package:darul_falah/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBody extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: basePadding),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 100,
                    child: Image.asset('images/logo.png'),
                  ),
                  const SizedBox(
                    height: smallPading,
                  ),
                  Text(
                    "Login",
                    style: textTheme.headline6,
                  ),
                  const SizedBox(
                    height: largePadding,
                  ),
                  const CustomTextField(
                    label: "Username/Email",
                  ),
                  const SizedBox(
                    height: basePadding,
                  ),
                  const CustomTextField(
                    label: "Password",
                    obsecureText: true,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: largePadding,
                  ),
                  CustomButton(
                    text: "MASUK",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final data = User(
                          username: _usernameController.text,
                          email: _emailController.text,
                          password: _passwordController.text,
                        );

                        BlocProvider.of<AuthCubit>(context).register(data);
                      }
                    },
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Belum punya akun?",
                        style: textTheme.caption,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              registerRoute,
                            );
                          },
                          child: Text(
                            "Daftar sekarang",
                            style: textTheme.caption!.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
