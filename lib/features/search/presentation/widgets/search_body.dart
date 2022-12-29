import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/search/presentation/widgets/kabupaten_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBody extends StatelessWidget {
  SearchBody({
    Key? key,
  }) : super(key: key);

  final List<String> kabupaten = [
    "Jombang",
    "Kediri",
    "Gresik",
    "Lamongan",
    "Nganjuk",
    "Bojonegoro",
    "Sidoarjo",
    "Mojokerto"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(basePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: largePadding,
          ),
          const CustomTextField(
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 16,
            ),
            hint: "Cari Topik, Materi atau Alumni",
          ),
          const SizedBox(
            height: largePadding,
          ),
          Text(
            "Kabupaten",
            style: textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: smallPading,
          ),
          Expanded(
            child: GridView.builder(
              clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 171 / 75,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  crossAxisCount: 2),
              itemCount: kabupaten.length,
              itemBuilder: (context, index) {
                return KabupatenItem(
                  kabupaten: kabupaten[index],
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
