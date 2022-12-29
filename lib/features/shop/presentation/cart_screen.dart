import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: Text("Keranjang"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: basePadding,
          vertical: largePadding * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: basePadding,
                  ),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(basePadding),
                      decoration: BoxDecoration(
                        border: Border.all(color: violet[200]!),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 100,
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
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
                            width: smallPading,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sweater Hangat XL",
                                style: textTheme.subtitle1!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rp.85.000,00",
                                style: textTheme.subtitle1,
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )),
            Container(
              height: 200,
              padding: const EdgeInsets.all(basePadding),
              decoration: BoxDecoration(
                border: Border.all(color: violet[200]!),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Pembayaran",
                    style: textTheme.headline6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jumlah Produk",
                        style: textTheme.subtitle1,
                      ),
                      Text(
                        "2",
                        style: textTheme.subtitle2,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Harga",
                        style: textTheme.subtitle1,
                      ),
                      Text(
                        "Rp.170.000,00",
                        style: textTheme.subtitle2,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ongkir",
                        style: textTheme.subtitle1,
                      ),
                      Text(
                        "Free",
                        style: textTheme.subtitle2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: smallPading,
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: violet[600],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: textTheme.headline6,
                      ),
                      Text(
                        "Rp. 140.000,00",
                        style: textTheme.headline6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Order"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
