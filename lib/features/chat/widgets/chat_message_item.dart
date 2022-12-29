import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class ChatMessageItem extends StatelessWidget {
  const ChatMessageItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(basePadding),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("images/article.jpg"),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Text(
                  "Hai Semua",
                  style: textTheme.bodyText1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Wrap(
                spacing: 8,
                children: [
                  Text(
                    "Adi Pratama",
                    style: textTheme.caption!.copyWith(
                      color: violet[200],
                    ),
                  ),
                  Text(
                    "Rabu, 28/12/2022 01:00 PM",
                    style: textTheme.caption!.copyWith(
                      color: violet[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
