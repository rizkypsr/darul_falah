import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: basePadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), //color of shadow
            blurRadius: 10, // blur radius
            offset: const Offset(3, 3), // changes position of shadow
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.bolt,
              color: Colors.grey.shade400,
            ),
          ),
          Expanded(
            child: CustomTextField(
              hint: "Tulis pesan",
              textInputAction: TextInputAction.send,
              hintStyle: textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
                color: violet[400],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            color: Colors.grey.shade400,
            icon: Icon(
              FontAwesomeIcons.circleRight,
              color: Colors.grey.shade400,
            ),
          )
        ],
      ),
    );
  }
}
