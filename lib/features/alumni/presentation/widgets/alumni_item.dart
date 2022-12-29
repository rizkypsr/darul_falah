import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/alumni/domain/entities/alumni.dart';
import 'package:flutter/material.dart';

class AlumniItem extends StatelessWidget {
  const AlumniItem({
    Key? key,
    required this.alumni,
  }) : super(key: key);

  final Alumni alumni;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 3,
        child: Center(
          child: ListTile(
            onTap: () =>
                Navigator.pushNamed(context, alumniDetailRoute, arguments: alumni),
            title: Text(
              alumni.name,
              maxLines: 2,
              style: textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              alumni.role,
              maxLines: 2,
              style: textTheme.caption,
              overflow: TextOverflow.ellipsis,
            ),
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                "images/${alumni.photo}",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
