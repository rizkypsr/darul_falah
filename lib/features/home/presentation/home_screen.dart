import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/features/home/presentation/widgets/custom_end_drawer.dart';
import 'package:darul_falah/features/home/presentation/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: BaseAppBar(
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.qrcode),
            onPressed: () => Navigator.pushNamed(context, qrMemberRoute),
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.solidBell),
            onPressed: () => Navigator.pushNamed(context, notificationRoute),
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.bars),
            onPressed: () => _key.currentState!.openEndDrawer(),
          ),
        ],
      ),
      endDrawer: const CustomEndDrawer(),
      backgroundColor: violet[800],
      body: HomeBody(),
    );
  }
}
