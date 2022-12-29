import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class FollowerScreen extends StatelessWidget {
  const FollowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text("Followers"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: basePadding,
        ),
        padding: const EdgeInsets.all(basePadding),
        itemCount: 5,
        itemBuilder: (context, index) => Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage('images/alfan.png'),
            ),
            const SizedBox(
              width: basePadding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fajrul Mustaqin",
                  style: textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "@fajrulmstq",
                  style: textTheme.subtitle1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
