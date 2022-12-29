import 'package:darul_falah/features/alumni/presentation/widgets/alumni_detail_body.dart';
import 'package:darul_falah/features/alumni/domain/entities/alumni.dart';
import 'package:flutter/material.dart';

class AlumniDetailScreen extends StatelessWidget {
  const AlumniDetailScreen({super.key, required this.alumni});

  final Alumni alumni;

  @override
  Widget build(BuildContext context) {
    return AlumniDetailBody(alumni: alumni);
  }
}
