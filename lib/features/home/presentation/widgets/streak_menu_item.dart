import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/core/presentation/cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreakMenuItem extends StatelessWidget {
  const StreakMenuItem({
    Key? key,
    required this.text,
    required this.icon,
    this.image = "shape2.png",
  }) : super(key: key);

  final String text;
  final String image;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<BottomNavCubit>().getSearchScreen();
        Navigator.pop(context);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: basePadding),
        padding: const EdgeInsets.symmetric(
          horizontal: basePadding,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("images/$image"),
                Icon(icon),
              ],
            ),
            const SizedBox(
              width: basePadding,
            ),
            Text(
              text,
              style: textTheme.subtitle1,
            ),
            const Spacer(),
            const Icon(FontAwesomeIcons.angleRight),
          ],
        ),
      ),
    );
  }
}
