import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopScreenBody extends StatelessWidget {
  const ShopScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(basePadding),
          child: CustomTextField(
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 16,
            ),
            hint: "Cari produk",
          ),
        ),
        const SizedBox(
          height: basePadding,
        ),
        Expanded(
          child: GridView.builder(
            itemCount: 20,
            padding: const EdgeInsets.all(basePadding),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: largePadding,
              crossAxisSpacing: basePadding,
              mainAxisExtent: 240,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, shopDetailRoute);
                },
                child: Container(
                  padding: const EdgeInsets.all(basePadding),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), //color of shadow
                        blurRadius: 10, // blur radius
                        offset:
                            const Offset(3, 3), // changes position of shadow
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 145,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.network(
                          "https://images.pexels.com/photos/45982/pexels-photo-45982.jpeg?auto=compress&cs=tinysrgb&w=600",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: smallPading,
                      ),
                      Text(
                        "Rp. 85.000,00",
                        style: textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Sweater Hangat XL",
                        style: textTheme.subtitle2,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
