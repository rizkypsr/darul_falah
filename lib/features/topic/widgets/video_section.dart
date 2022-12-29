import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Video",
          style: textTheme.headline6,
        ),
        const SizedBox(
          height: 18,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), //color of shadow
                    blurRadius: 10, // blur radius
                    offset: const Offset(3, 3), // changes position of shadow
                  )
                ],
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image.asset(
                    "images/shape3.png",
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: basePadding, vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tentukan Strategi Menjalankan Bisnismu!",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.subtitle1!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Wrap(
                                spacing: 6,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text(
                                    "04:00 min",
                                    style: textTheme.bodyText1,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: violet[900],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Text(
                                    "M .Anwar Firdaus, S.IP",
                                    overflow: TextOverflow.ellipsis,
                                    style: textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Icon(FontAwesomeIcons.angleRight)
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
