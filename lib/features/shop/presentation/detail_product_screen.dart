import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar.light(
        title: Text('Detail Produk'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: basePadding, vertical: largePadding),
        child: Column(
          children: [
            Container(
              height: 235,
              width: double.infinity,
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
              height: basePadding,
            ),
            Text(
              "Rp. 85.000,00",
              style: textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sweater Hangat XL",
              style: textTheme.headline6,
            ),
            const SizedBox(
              height: largePadding,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Deskripsi",
                style: textTheme.subtitle2,
              ),
            ),
            const SizedBox(
              height: smallPading,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              textAlign: TextAlign.justify,
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, cartRoute);
                },
                child: const Text("Tambahkan ke keranjang"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
