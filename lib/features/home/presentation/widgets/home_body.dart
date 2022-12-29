import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/core/presentation/cubit/bottom_nav_cubit.dart';
import 'package:darul_falah/features/materi/domain/entities/materi.dart';
import 'package:darul_falah/features/home/presentation/widgets/home_article_section.dart';
import 'package:darul_falah/features/home/presentation/widgets/home_materi_section.dart';
import 'package:darul_falah/features/home/presentation/widgets/home_topic_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  final List<Materi> listHighlight = [
    Materi(
        title: "Khidmat Pada Ummat",
        type: "Highlight",
        host: "K.H Taufiqul Hakim",
        photo: "taifiqul_hakim.png",
        video: "video_khidmat.mp4"),
    Materi(
        title: "Mempelajari Amtsilati adalah Istimewa",
        type: "Highlight",
        host: "K.H Taufiqul Hakim",
        photo: "taifiqul_hakim.png",
        video: "video_khidmat.mp4"),
  ];

  final List<Materi> listMateri = [
    Materi(
        title: "Keistimewaan orang yang sering berdzikir kepada Allah",
        type: "Materi",
        host: "K.H Taufiqul Hakim",
        photo: "taifiqul_hakim.png",
        video: "video_khidmat.mp4"),
    Materi(
        title: "Obat penawar bagi hati manusia",
        type: "Materi",
        host: "K.H Taufiqul Hakim",
        photo: "taifiqul_hakim.png",
        video: "video_khidmat.mp4"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: largePadding,
          ),
          Text(
            textAlign: TextAlign.center,
            "Hai Rizky Pratama Syahrul Ramadhan",
            style: textTheme.headline6!.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: basePadding,
          ),
          GestureDetector(
            onTap: () => context.read<BottomNavCubit>().getSearchScreen(),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  horizontal: basePadding, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: basePadding),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Wrap(
                spacing: 15,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: violet[900],
                    size: 16,
                  ),
                  Text(
                    "Cari Topik, Materi atau Alumni",
                    style: textTheme.bodyText1,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeMateriSection(
                  label: "Highlight",
                  listMateri: listHighlight,
                ),
                HomeTopicSection(),
                HomeMateriSection(
                  label: "Materi",
                  listMateri: listMateri,
                  isDark: true,
                ),
                HomeArticleSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
