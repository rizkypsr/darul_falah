import 'package:chips_choice/chips_choice.dart';
import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/features/topic/widgets/alumni_section.dart';
import 'package:darul_falah/features/topic/widgets/topic_section.dart';
import 'package:darul_falah/features/topic/widgets/video_section.dart';
import 'package:flutter/material.dart';

class TopicDetailBody extends StatefulWidget {
  const TopicDetailBody({
    Key? key,
  }) : super(key: key);

  @override
  State<TopicDetailBody> createState() => _TopicDetailBodyState();
}

class _TopicDetailBodyState extends State<TopicDetailBody> {
  int tag = 0;
  List<String> options = ['Semua', 'Topik', 'Video', 'Alumni'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChipsChoice<int>.single(
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
        const SizedBox(
          height: largePadding,
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: largePadding,
              horizontal: basePadding,
            ),
            child: Column(
              children: [
                const TopicSection(),
                const SizedBox(
                  height: largePadding,
                ),
                const VideoSection(),
                const SizedBox(
                  height: largePadding,
                ),
                AlumniSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
