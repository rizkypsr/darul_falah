import 'package:chips_choice/chips_choice.dart';
import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/base_appbar.dart';
import 'package:darul_falah/core/presentation/widgets/chip.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/alumni/presentation/widgets/description_list.dart';
import 'package:darul_falah/features/alumni/domain/entities/alumni.dart';
import 'package:flutter/material.dart';
import 'package:darul_falah/core/utils/capitalize.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AlumniDetailBody extends StatefulWidget {
  const AlumniDetailBody({
    Key? key,
    required this.alumni,
  }) : super(key: key);

  final Alumni alumni;

  @override
  State<AlumniDetailBody> createState() => _AlumniDetailBodyState();
}

class _AlumniDetailBodyState extends State<AlumniDetailBody> {
  int tag = 0;
  List<String> options = ['Biodata', 'Inspirasi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar.light(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: basePadding, vertical: largePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Stack(
                alignment: Alignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: -40,
                        top: -20,
                        child: Transform.rotate(
                          angle: 30,
                          child: Image.asset(
                            "images/shape6v.png",
                            scale: 0.9,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        right: -50,
                        top: -5,
                        child: Transform.rotate(
                          angle: 55,
                          child: Image.asset(
                            "images/shape6.png",
                            scale: 0.9,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage("images/${widget.alumni.photo}"),
                      ),
                      Positioned(
                        bottom: -20,
                        right: -30,
                        child: Image.asset(
                          "images/shape6g.png",
                          scale: 1.8,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, materiVideoRoute,
                            arguments: "mentor.mp4");
                      },
                      child: CustomChip(
                        text: "Tonton Video",
                        backgroundColor: violet[500]!,
                        color: Colors.white,
                        icon: const Icon(
                          FontAwesomeIcons.play,
                          color: Colors.white,
                          size: 12,
                        ),
                      ),
                    ),
                  )
                ],
              )),
              const SizedBox(
                height: largePadding,
              ),
              Text(
                widget.alumni.name,
                style: textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.alumni.role,
                style: textTheme.subtitle1,
              ),
              const SizedBox(
                height: largePadding,
              ),
              Center(
                child: ChipsChoice<int>.single(
                  value: tag,
                  choiceStyle: C2ChipStyle.filled(
                    color: Colors.grey,
                    foregroundColor: violet[900],
                    selectedStyle: C2ChipStyle(
                      backgroundColor: violet[900],
                      foregroundColor: Colors.white,
                    ),
                  ),
                  onChanged: (val) => setState(() => tag = val),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                ),
              ),
              const SizedBox(
                height: basePadding,
              ),
              widget.alumni.descriptions != null
                  ? ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: widget.alumni.descriptions!.entries.map((al) {
                        return Container(
                          margin: const EdgeInsets.only(
                            bottom: largePadding,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                al.key.capitalize(),
                                style: textTheme.subtitle1!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: smallPading,
                              ),
                              al.value is List
                                  ? DescriptionList(items: al.value)
                                  : Text(
                                      al.value,
                                      textAlign: TextAlign.justify,
                                      style: textTheme.bodyText1,
                                    ),
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
