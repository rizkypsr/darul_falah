import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class KabupatenItem extends StatelessWidget {
  const KabupatenItem({
    Key? key,
    required this.kabupaten,
    required this.index,
  }) : super(key: key);

  final String kabupaten;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), //color of shadow
            blurRadius: 10, // blur radius
            offset: const Offset(3, 3), // changes position of shadow
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -8,
            bottom: -10,
            child: Image.asset(
              index % 2 == 0 ? "images/shape6.png" : "images/shape6y.png",
              scale: 3.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(basePadding),
            child: Text(
              kabupaten,
              style: textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: 13,
            bottom: 6,
            child: Text(
              kabupaten[0],
              style: textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
