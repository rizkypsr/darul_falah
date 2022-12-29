import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/alumni/domain/entities/alumni.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlumniSection extends StatelessWidget {
  AlumniSection({super.key});

  final List<Alumni> listAlumni = [
    Alumni(
      id: 2,
      name: "M. Anwar Firdaus, S.IP",
      role: "Santripreneur",
      photo: "anwar.png",
      descriptions: {
        "pengalaman":
            "M. Anwar Firdaus, Akrab dipanggil dengan Gus Anwar, adalah seorang entrepreneur dengan pengalaman lebih dari 7 tahun dalam segala bidang  bisnis. ia telah melakoni bermacam-macam bidang bisnis retail, kuliner, dan Software/Aplikasi. Salah Satu aplikasi yang dikembangkan adalah aplikasi untuk komunitas dan Organisasi",
        "prestasi": [
          "Sambel gami Cak Man (Kuliner)",
          "Software Aplikasi",
          "Taskia (Retail Fashion)"
        ],
        "topik": [
          "Entrepreneur",
          "Cara Memulai Bisnis",
          "Kuliner yang unik dan menarik"
        ]
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Alumni",
          style: textTheme.headline6,
        ),
        const SizedBox(
          height: 18,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: listAlumni.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, alumniDetailRoute,
                  arguments: listAlumni[index]),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "images/${listAlumni[index].photo}",
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listAlumni[index].name,
                        maxLines: 2,
                        style: textTheme.subtitle1!
                            .copyWith(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        listAlumni[index].role,
                        maxLines: 2,
                        style: textTheme.caption,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )),
                  const Icon(FontAwesomeIcons.angleRight)
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
