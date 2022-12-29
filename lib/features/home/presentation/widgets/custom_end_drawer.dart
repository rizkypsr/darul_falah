import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: violet[500],
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Rizky Pratama Syahrul Ramadhan",
                  style: textTheme.headline6!.copyWith(
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: basePadding,
                ),
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: [
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.userAstronaut,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Profil',
                        style: textTheme.subtitle1!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, profileRoute);
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.comment,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Help and feedback',
                        style: textTheme.subtitle1!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.shop,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Shop',
                        style: textTheme.subtitle1!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, shopRoute);
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        FontAwesomeIcons.arrowRightFromBracket,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Logout',
                        style: textTheme.subtitle1!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        BlocProvider.of<AuthCubit>(context).logout();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
