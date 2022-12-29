import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    Key? key,
    required this.name,
    required this.message,
    required this.image,
  }) : super(key: key);

  final String name;
  final String message;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, chatDetailRoute),
      child: Container(
        padding: const EdgeInsets.all(basePadding),
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade100),
        )),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/$image"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: textTheme.subtitle1,
                ),
                Text(
                  message,
                  style: textTheme.caption!.copyWith(
                    color: violet[300],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
