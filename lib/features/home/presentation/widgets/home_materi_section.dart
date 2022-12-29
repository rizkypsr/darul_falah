import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/materi/domain/entities/materi.dart';
import 'package:darul_falah/core/presentation/widgets/chip.dart';
import 'package:flutter/material.dart';

class HomeMateriSection extends StatelessWidget {
  const HomeMateriSection(
      {super.key,
      required this.label,
      this.isDark = false,
      required this.listMateri});

  final String label;
  final bool isDark;
  final List<Materi> listMateri;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: basePadding, vertical: largePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: textTheme.headline6,
          ),
          const SizedBox(
            height: basePadding,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              itemCount: listMateri.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (() {
                    Navigator.pushNamed(context, materiVideoRoute,
                        arguments: listMateri[index].video);
                  }),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 200,
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
                    child: Stack(
                      children: [
                        Image.asset(
                          isDark ? 'images/shapeb.png' : 'images/shape.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(basePadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                listMateri[index].title,
                                maxLines: 3,
                                style: textTheme.subtitle1!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: isDark
                                      ? Colors.white
                                      : textTheme.subtitle1!.color,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: smallPading,
                              ),
                              CustomChip(
                                text: listMateri[index].type,
                                backgroundColor: yellow[700]!,
                                color: Colors.white,
                              ),
                              const Spacer(),
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/taifiqul_hakim.png"),
                              ),
                              const SizedBox(
                                height: smallPading,
                              ),
                              Text(
                                listMateri[index].host,
                                style: textTheme.bodyText1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        )
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
