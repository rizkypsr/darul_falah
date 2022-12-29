import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/features/home/presentation/widgets/streak_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(),
      backgroundColor: violet[800],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(basePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                child: Image.asset(
                  'images/logo.png',
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              Expanded(
                  child: Column(
                children: const [
                  StreakMenuItem(
                    text: "Amtsilati Alumni",
                    icon: FontAwesomeIcons.users,
                  ),
                  StreakMenuItem(
                    text: "Amtsilati Go Internasional",
                    image: "shape2y.png",
                    icon: FontAwesomeIcons.globe,

                  ),
                  StreakMenuItem(
                    text: "Jaringan Pondok",
                    image: "shape2b.png",
                    icon: FontAwesomeIcons.circleNodes,
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
