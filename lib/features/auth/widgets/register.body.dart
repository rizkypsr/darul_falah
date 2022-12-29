import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_button.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/auth/domain/entities/user.dart';
import 'package:darul_falah/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBody extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _waNumberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: basePadding,
              vertical: largePadding,
            ),
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
                    "Daftar Akun",
                    style: textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextField(
                    controller: _nameController,
                    label: "Nama",
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: basePadding,
                  ),
                  CustomTextField(
                    controller: _usernameController,
                    label: "Username",
                  ),
                  const SizedBox(
                    height: basePadding,
                  ),
                  CustomTextField(
                    controller: _emailController,
                    label: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: basePadding,
                  ),
                  CustomTextField(
                    controller: _passwordController,
                    label: "Password",
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: basePadding,
                  ),
                  CustomTextField(
                    controller: _confirmPasswordController,
                    label: "Confirm Password",
                    obsecureText: true,
                  ),
                  const SizedBox(
                    height: basePadding,
                  ),
                  CustomTextField(
                    controller: _waNumberController,
                    label: "Nomor Whatsapp",
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomButton(
                    text: "DAFTAR",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final data = User(
                          name: _nameController.text,
                          username: _usernameController.text,
                          email: _emailController.text,
                          password: _passwordController.text,
                          whatsappNumber: _waNumberController.text,
                        );

                        BlocProvider.of<AuthCubit>(context).login(data);
                      }
                    },
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Sudah punya akun?",
                        style: textTheme.caption,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              loginRoute,
                            );
                          },
                          child: Text(
                            "Masuk",
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
