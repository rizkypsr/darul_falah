import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/alumni/domain/entities/alumni.dart';
import 'package:darul_falah/features/article/domain/entities/article.dart';
import 'package:flutter/material.dart';

class HomeArticleSection extends StatelessWidget {
  HomeArticleSection({super.key});

  final List<Article> articles = [
    Article(
        title: "Belajar bisnis bersama founder incubator bisnis",
        photo: "article.jpg"),
    Article(
        title: "Belajar bisnis bersama founder incubator bisnis",
        photo: "article.jpg"),
    Article(
        title: "Belajar bisnis bersama founder incubator bisnis",
        photo: "article.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: basePadding, right: basePadding, top: largePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Artikel Amtsilati",
            style: textTheme.headline6,
          ),
          const SizedBox(
            height: basePadding,
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      alumniDetailRoute,
                      arguments: Alumni(
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
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.black.withOpacity(0.1), //color of shadow
                          blurRadius: 10, // blur radius
                          offset:
                              const Offset(3, 3), // changes position of shadow
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 82,
                          width: 123,
                          child: Image.asset(
                            "images/${articles[index].photo}",
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        const SizedBox(
                          width: smallPading,
                        ),
                        Expanded(
                          child: Text(
                            articles[index].title,
                            maxLines: 2,
                            style: textTheme.subtitle1!
                                .copyWith(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
