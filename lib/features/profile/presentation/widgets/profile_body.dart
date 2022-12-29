import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_button.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(basePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.calendar),
                  onPressed: () {
                    Navigator.pushNamed(context, calendarRoute);
                  },
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.grey[300],
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/alfan.png'),
                  ),
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.question),
                  onPressed: () {
                    Navigator.pushNamed(context, faqRoute);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: smallPading,
            ),
            Center(
              child: Text(
                "Rizky Pratama Syahrul Ramadhan",
                style: textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: largePadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, followerRoute);
                  },
                  child: Column(
                    children: [
                      Text(
                        "1",
                        style: textTheme.headline6,
                      ),
                      Text(
                        "Followers",
                        style: textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: 2,
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, followingRoute);
                  },
                  child: Column(
                    children: [
                      Text(
                        "10",
                        style: textTheme.headline6,
                      ),
                      Text(
                        "Following",
                        style: textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: largePadding * 2,
            ),
            CustomButton(
              text: "Edit Profil",
              onPressed: () {
                Navigator.pushNamed(context, editProfileRoute);
              },
            ),
            const SizedBox(
              height: basePadding,
            ),
            CustomButton(
              text: "Edit Data Kartu",
              onPressed: () {
                Navigator.pushNamed(context, editCardRoute);
              },
            ),
            const SizedBox(
              height: largePadding,
            ),
            Text(
              "Bio",
              style: textTheme.subtitle1,
            ),
            const SizedBox(
              height: smallPading,
            ),
            Text(
              "Ada",
              style: textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
