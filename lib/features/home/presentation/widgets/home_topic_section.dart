import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/topic/domain/entites/topic.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTopicSection extends StatelessWidget {
  HomeTopicSection({super.key});

  final List<Topic> topics = [
    Topic(title: "Amtsilati Inspirasi", icon: FontAwesomeIcons.lightbulb),
    Topic(title: "Amtsilati Alumni", icon: FontAwesomeIcons.users),
    Topic(title: "Amtsilati Peduli", icon: FontAwesomeIcons.handHoldingHand),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding:
          const EdgeInsets.symmetric(horizontal: basePadding, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Topik",
            style: textTheme.headline6,
          ),
          const SizedBox(
            height: basePadding,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: topics.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(context, topicDetailRoute),
                  child: Container(
                    margin: const EdgeInsets.only(right: 12),
                    width: 80,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset("images/shape2.png"),
                            Icon(topics[index].icon),
                          ],
                        ),
                        const SizedBox(
                          height: smallPading,
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          topics[index].title,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: textTheme.bodyText1,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
