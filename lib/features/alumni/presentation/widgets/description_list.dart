import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class DescriptionList extends StatelessWidget {
  const DescriptionList({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Text(
          "- ${items[index]}",
          textAlign: TextAlign.justify,
          style: textTheme.bodyText1,
        );
      },
    );
  }
}
