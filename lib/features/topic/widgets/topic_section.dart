import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopicSection extends StatelessWidget {
  const TopicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Topik",
          style: textTheme.headline6,
        ),
        const SizedBox(
          height: 18,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: basePadding),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("images/shape2y.png"),
                      const Icon(FontAwesomeIcons.bookOpenReader),
                    ],
                  ),
                  const SizedBox(
                    width: basePadding,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cara Mulai Berbisnis",
                          style: textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "M .Anwar Firdaus, S.IP",
                          style: textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  const Icon(FontAwesomeIcons.angleRight)
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
