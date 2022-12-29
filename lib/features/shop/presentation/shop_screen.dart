import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/features/shop/widgets/shop_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar.light(
        title: const Text('Shop'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, cartRoute);
            },
            icon: const Icon(FontAwesomeIcons.basketShopping),
          )
        ],
      ),
      body: const ShopScreenBody(),
    );
  }
}
