import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrMemberScreen extends StatelessWidget {
  const QrMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      backgroundColor: violet[800],
      body: Center(
        child: QrImage(
          data: "123",
          size: 250.0,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
